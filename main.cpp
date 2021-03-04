//
//  main.cpp
//  DreamLLVM
//
//  Created by Marc Fervil on 2/15/21.
//

#include "main.hpp"
#include "standard.hpp"

#include "llvm/ADT/STLExtras.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/ExecutionEngine/GenericValue.h"
#include "llvm/ExecutionEngine/MCJIT.h"
#include "llvm/IR/Argument.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/DynamicLibrary.h"
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Object/ObjectFile.h"
#include "llvm/Support/raw_ostream.h"
#include <algorithm>
#include <cassert>
#include <memory>
#include <vector>
#include <unistd.h>

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Host.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetOptions.h"

extern "C" {
using namespace llvm;
using namespace std;


StructType * dreamObjTy;
PointerType * dreamObjPtrTy;
PointerType * voidPointerTy;

class LLVMBuilder
{
    // Access specifier
    public:
  
    // Data Members
    IRBuilder<> get;
  
    // Member Functions()
    LLVMBuilder(BasicBlock *block) : get(block) {
  
    }
 
};

//struct that represents llvm data
typedef struct LLVMData{
    LLVMContext context;
    Module * module;
    Function *mainFunc;
    BasicBlock *currentBlock;
    ExecutionEngine* engine;
    LLVMBuilder * builder;
    std::unique_ptr<Module> owner;
    
} LLVMData;



map<string, FunctionCallee> functions;


void testing(){
    printf("IT WORKS!!");

}

Value * call_standard(LLVMData* context, const char * funcName, ArrayRef<Value *> args);

//expose standard.cpp functions to LLVM
void loadStandard(LLVMData* context){
    
    Type * strType = PointerType::get(Type::getInt8Ty(context->context), 0);
    Type * intType = IntegerType::getInt32Ty(context->context);
    
    functions["print"] = context->owner->getOrInsertFunction("print", FunctionType::get(PointerType::getVoidTy(context->context),dreamObjPtrTy, false));
    functions["printf"] = context->owner->getOrInsertFunction("printf", FunctionType::get(intType, strType, true));
    functions["object"] = context->owner->getOrInsertFunction("make_dream", FunctionType::get(dreamObjPtrTy, voidPointerTy, false ));
    functions["set_var"] = context->owner->getOrInsertFunction("set_var", FunctionType::get(dreamObjPtrTy, {dreamObjPtrTy, strType}, false ));
    functions["get_var"] = context->owner->getOrInsertFunction("get_var", FunctionType::get(dreamObjPtrTy, strType, false ));
   // functions["get_var"] = context->owner->getOrInsertFunction("set_var", FunctionType::get(dreamObjPtrTy, dreamObjPtrTy, strType, false ));
    functions["str"] = context->owner->getOrInsertFunction("dreamStr", FunctionType::get(dreamObjPtrTy, PointerType::get(Type::getInt8Ty(context->context), 0), false));
    functions["int"] = context->owner->getOrInsertFunction("dreamInt", FunctionType::get(dreamObjPtrTy, PointerType::get(Type::getInt32Ty(context->context), 0), false));
    functions["func"] = context->owner->getOrInsertFunction("dreamFunc", FunctionType::get(dreamObjPtrTy, PointerType::get(Type::getInt8Ty(context->context), 0), false));
    functions["test"] = context->owner->getOrInsertFunction("testing", FunctionType::get(PointerType::getVoidTy(context->context), false));
}


//initialize llvm & return context struct
LLVMData * llvm_init(){
    //initialize llvm
    InitializeNativeTarget();
    LLVMInitializeNativeAsmPrinter();
    
    
    llvm::sys::DynamicLibrary::LoadLibraryPermanently("dream.so");
    llvm::sys::DynamicLibrary::LoadLibraryPermanently("dream.o");

    //initialize context struct
    LLVMData * new_context = new LLVMData();
    
    //create main module
    new_context->owner = std::make_unique<Module>("maindream", new_context -> context);
    Module *M = new_context->owner.get();
    new_context -> module = M;
    
    //initialize type variables
    voidPointerTy = PointerType::get(PointerType::getVoidTy(new_context -> context), 0);
    dreamObjTy = StructType::create(new_context -> context, "dreamObj");
    dreamObjPtrTy = PointerType::get(dreamObjTy, 0);
    dreamObjTy->setBody({ Type::getInt8PtrTy(new_context -> context) , dreamObjPtrTy , voidPointerTy, dreamObjPtrTy });
    
    
    //create main function & block
    Type * int32Type = Type::getInt32Ty(new_context -> context);
    new_context -> mainFunc = Function::Create(FunctionType::get(int32Type, {}, false), Function::ExternalLinkage, "main_func", new_context->module);
    new_context -> currentBlock = BasicBlock::Create(new_context -> context, "EntryBlock", new_context->mainFunc);
    
    new_context -> builder = new LLVMBuilder(new_context->currentBlock);
    
    //load standard functions
    loadStandard(new_context);
    return new_context;
}


void llvm_link(LLVMData * context, string fileName ){
    // context->engine->add
     
     //llvm::sys::DynamicLibrary::LoadLibraryPermanently("./lib/"+fileName);
     
     std::string objectFileName("./lib/"+fileName);

     ErrorOr<std::unique_ptr<MemoryBuffer>> buffer =
       MemoryBuffer::getFile(objectFileName.c_str());

     if (!buffer) {
       // handle error
     }

     Expected<std::unique_ptr<llvm::object::ObjectFile>> objectOrError = llvm::object::ObjectFile::createObjectFile(buffer.get()->getMemBufferRef());
     //OfbectcreateObjectFile(buffer.get()->getMemBufferRef());

     if (!objectOrError) {
       // handle error
     }

     std::unique_ptr<llvm::object::ObjectFile> objectFile(std::move(objectOrError.get()));

     auto owningObject = llvm::object::OwningBinary<llvm::object::ObjectFile>(std::move(objectFile),std::move(buffer.get()));

     context->engine->addObjectFile(std::move(owningObject));
}

int build(LLVMData * context){
    InitializeAllTargetInfos();
      InitializeAllTargets();
      InitializeAllTargetMCs();
      InitializeAllAsmParsers();
      InitializeAllAsmPrinters();

      auto TargetTriple = sys::getDefaultTargetTriple();
      context->module->setTargetTriple(TargetTriple);

      std::string Error;
      auto Target = TargetRegistry::lookupTarget(TargetTriple, Error);

      // Print an error and exit if we couldn't find the requested target.
      // This generally occurs if we've forgotten to initialise the
      // TargetRegistry or we have a bogus target triple.
      if (!Target) {
        errs() << Error;
        return 1;
      }

    auto CPU  = sys::getHostCPUName();
      auto Features = "";

      TargetOptions opt;
      auto RM = Optional<Reloc::Model>();
      auto TheTargetMachine =
          Target->createTargetMachine(TargetTriple, CPU, Features, opt, RM);

    context->module->setDataLayout(TheTargetMachine->createDataLayout());

      auto Filename = "lib/dream_output.o";
      std::error_code EC;
      raw_fd_ostream dest(Filename, EC, sys::fs::OF_None);

      if (EC) {
        errs() << "Could not open file: " << EC.message();
        return 1;
      }

      legacy::PassManager pass;
      auto FileType = CGFT_ObjectFile;

      if (TheTargetMachine->addPassesToEmitFile(pass, dest, nullptr, FileType)) {
        errs() << "TheTargetMachine can't emit a file of this type";
        return 1;
      }

      pass.run(*context->module);
      dest.flush();

      outs() << "Wrote " << Filename << "\n";

    return 0;
}

//run our llvm code
void llvm_run(LLVMData * context, bool link_obj=true, bool print_module = false, bool build_obj = false){
    context -> engine = EngineBuilder(std::move(context->owner)).create();
    
    if(link_obj){
        //for some reason library functions need to be exposed like this
        for (auto const& x : functions)
        {
            string funcName = x.first;
            Function *f = Function::Create(functions[funcName].getFunctionType(),Function::ExternalLinkage, funcName, context->module);
            context->engine->addGlobalMapping(f, functions[funcName].getCallee());
        }
    }
    
    if(print_module){
        outs() << "We just constructed this LLVM module:\n\n" << *context->module;
        
        printf("\n\n");
    }
    std::vector<GenericValue> noargs;
    GenericValue gv = context->engine->runFunction(context->mainFunc, noargs);
    printf("\n");
    
    outs() << "Result: " << gv.IntVal << "\n";
    if(build_obj)build(context);
    delete context -> engine;
    llvm_shutdown();
    
}
Value * llvmStrConst(LLVMData* context, const char * value){
    return context->builder->get.CreateGlobalStringPtr(StringRef(value));
}
Value * num(LLVMData* context, int value){
    Value* builtInt = context->builder->get.getInt32(value);
    Value *objStore = new AllocaInst(dreamObjPtrTy, 0, "int_stack", context->currentBlock);
    Value * callResult = context->builder->get.CreateCall(functions["int"], builtInt);
    new StoreInst(callResult, objStore, context->currentBlock);
    LoadInst * object = new LoadInst(dreamObjPtrTy, objStore, "int", context->currentBlock);
    return object;
}


bool isBuiltinFunc(const char * key){
    
    return !(functions.find(string(key)) == functions.end());
}

Value * get_var_llvm(LLVMData* context,  Value * scope, const char * key){
    return call_standard(context, "get_var", {scope, llvmStrConst(context, key)});
}

Value * set_var_llvm(LLVMData* context,  Value * scope, const char * key, Value * value){
    return call_standard(context, "set_var", {scope, llvmStrConst(context, key), value});
}

Value* get_value(LLVMData* context, Type * type, Value * obj );
Value * call_standard(LLVMData* context, const char * funcName, ArrayRef<Value *> args){
    
    Value * callResult;
    if (isBuiltinFunc(funcName)){
        callResult = context->builder->get.CreateCall(functions[funcName], args);
    }else{
        //Value * var = call_standard(context, "get_var", {scope, llvmStrConst(context, "few")});
        //callResult = context->builder->get.CreateCall
        
        
        Value * var = get_var_llvm(context, args[0], funcName);
        //TODO: IF THE PROGRAM RANDOMLY SEGFAULTS IT WAS PROBABLY CAUSED BY THIS LINE (I didn't pass in the correct number of args, but it doesn't seem to matter...)
        FunctionType * func_ty = FunctionType::get(dreamObjPtrTy, { }, false);
        Type * func_ptr_ty = PointerType::get(func_ty, 0);
        Value * func_ptr = get_value(context, func_ptr_ty, var);
        
        callResult = context->builder->get.CreateCall(func_ty, func_ptr, args);
    }
    
    return callResult;
}

Value * call_standard_c(LLVMData* context, const char * funcName, int size, Value * c_args[size]){
    vector<Value *> args;
    for(int i=0;i<size;i++)args.push_back(c_args[i]);
    
    return call_standard(context, funcName, args);
   // return v;
}

Value * call(LLVMData* context, Value * var,  int size, Value * c_args[size]){
    vector<Value *> args;
    for(int i=0;i<size;i++)args.push_back(c_args[i]);
    
    FunctionType * func_ty = FunctionType::get(dreamObjPtrTy, { }, false);
    Type * func_ptr_ty = PointerType::get(func_ty, 0);
    Value * func_ptr = get_value(context, func_ptr_ty, var);
    
    return context->builder->get.CreateCall(func_ty, func_ptr, args);
   // return v;
}

Value * llvmInt(LLVMData* context, int value){
    return context->builder->get.getInt32(value);
}

Value * llvmStr(LLVMData* context, const char * value){
    return context->builder->get.CreateGlobalStringPtr(StringRef(value));
}

Value * str(LLVMData* context, const char * value/*, const char * name="str"*/){
    Value *objStore = new AllocaInst(dreamObjPtrTy, 0, "str_stack", context->currentBlock);
    Value * callResult = context->builder->get.CreateCall(functions["str"], context->builder->get.CreateGlobalStringPtr(StringRef(value)));
    new StoreInst(callResult, objStore, context->currentBlock);
    LoadInst * object = new LoadInst(dreamObjPtrTy, objStore, "str", context->currentBlock);
    
  
  //  context->builder->get.CreateCall(functions["printf"], load2);
    return object;
}

typedef struct FuncData{
    Function *func;
    BasicBlock *startingBlock;
    Value * scope;
    const char * name;
    FuncData(Function *init_func):func(init_func){};
} FuncData;

Value * func_init(LLVMData* context, Value * value){
    Value *objStore = new AllocaInst(dreamObjPtrTy, 0, "func_stack", context->currentBlock);
    Value * callResult = context->builder->get.CreateCall(functions["func"], value);
    new StoreInst(callResult, objStore, context->currentBlock);
    LoadInst * object = new LoadInst(dreamObjPtrTy, objStore, "func", context->currentBlock);
    
  
  //  context->builder->get.CreateCall(functions["printf"], load2);
    return object;
}

FuncData * func(LLVMData* context, Value* obj, const char * funcName, int arg_size, const char * arg_names[arg_size]){
    //const char * fn = new const char("rr");
    
    
    vector<Type *> args = {dreamObjPtrTy};
    std::vector<Metadata*> meta_args;
    
    for(int i=0;i<arg_size;i++)args.push_back(dreamObjPtrTy);

    //intitilize function data struct pointer and set starting block so we know what our preivous function is
    Function *new_func = Function::Create(FunctionType::get(dreamObjPtrTy, args, false), Function::ExternalLinkage, funcName, context->module);
    FuncData * func_data = new FuncData(new_func);
    func_data -> startingBlock = std::move((context->currentBlock));
    
    //saving the arg names into metada was unnecessary in hindsight, but it might come in handy later...
    for(int i=0;i<arg_size;i++)meta_args.push_back(MDString::get(new_func->getContext(), arg_names[i]));
    new_func->setMetadata("arg_names", MDNode::get(new_func->getContext(),  meta_args));
    
    //name scope arg to prevent seggy
    Argument *context_arg = &*new_func->arg_begin();
    context_arg->setName("scope");
    
    //create and enter method block
    context -> currentBlock = BasicBlock::Create(context -> context, "EntryBlock", new_func);
    context->builder->get.SetInsertPoint(context->currentBlock);
    
    //save arguments into scope "obj"
    int i = 0;
    for (Argument& arg : new_func->args()) {
        //skip first context argument because we want the value of the variables (for now...)
        if(i==0){
            i = 1;
            continue;
        }
        //get and store the value of each argument and set the name respectively
        llvm::AllocaInst* alloc = context->builder->get.CreateAlloca(dreamObjPtrTy, 0, "alloctmp");
        new StoreInst(&arg, alloc, context->currentBlock);
        LoadInst * arg_ref = new LoadInst(dreamObjPtrTy, alloc, "varName", context->currentBlock);
        (&arg)->setName(arg_names[(i++)-1]);
       
        set_var_llvm(context, context_arg, arg_names[i-2], arg_ref);
        
    }
    
    //store function name & scope so they can be used outside of this function
    func_data -> scope = context_arg;
    func_data -> name = (new std::string(funcName))->c_str();

    return func_data;
}

void end_func(LLVMData* context, Value * scope, FuncData * func_data){
    
   
    context->builder->get.SetInsertPoint(func_data->startingBlock);
    context->currentBlock = func_data->startingBlock;
    
    set_var_llvm(context, scope, func_data->name, func_init(context, func_data->func));
}

Value * save(LLVMData* context, Value* obj, const char * varName, Value * value){
    return call_standard(context, "set_var", {obj, llvmStrConst(context, varName), value} );
}

Value * load(LLVMData* context, Value* obj, const char * varName){
    if(isBuiltinFunc(varName))return func_init(context, functions[varName].getCallee());
    
    return call_standard(context, "get_var", {obj, llvmStrConst(context, varName)} );
}


/*
Value * call_standard(LLVMData* context, const char * funcName, ArrayRef<Value *>* args){
   // if(args->size()==0)args=None;
    Value * callResult = context->builder->get.CreateCall(functions[funcName], *args);
    return callResult;
}


ArrayRef<Value *>* toArrayRef(int num, Value *values[]){
    ArrayRef<Value *>* e = new  ArrayRef<Value *>(values);
    for(int i=0; i<num; i++){
        e->
    }
    return e;
}*

Value * call_standardVal(LLVMData* context, const char * funcName, ArrayRef<Value *> args=None){
    if(args.size()==0)args=None;
    Value * callResult = context->builder->get.CreateCall(functions[funcName], args);
    return callResult;
}*/






Type * int_type(LLVMData* context){
    
    return Type::getInt32Ty(context->context);
}



Value * test0(LLVMData* context, int value){
    Value* builtInt = context->builder->get.getInt32(value);
   
    
    return builtInt;
}


Value * test1(LLVMData* context, int value){
    Value* builtInt = context->builder->get.getInt32(value);
    Value *objStore = new AllocaInst(dreamObjPtrTy, 0, "int_stack", context->currentBlock);
    
    return objStore;
}

void  test2(LLVMData* context){
    outs()<<"SIZE: "<<functions.size();
    Value* builtInt = context->builder->get.getInt32(30);
    Value *objStore = new AllocaInst(dreamObjPtrTy, 0, "int_stack", context->currentBlock);
    outs() << "\n";
    functions["inte"].getFunctionType()->print(outs());
    Value * callResult = context->builder->get.CreateCall(functions["inte"], builtInt);
    outs() << "\n";
  
}

void  test2a(LLVMData* context){
    Value* str = context->builder->get.CreateGlobalStringPtr(StringRef("The night me and your mama met"));
    context->builder->get.CreateCall(functions["printf"], str);
  
}

void  test2b(LLVMData* context){
    Value* str =context->builder->get.getInt32(30);
    context->builder->get.CreateCall(functions["test"], str);
  
}

Value * test3(LLVMData* context, int value){
    Value* builtInt = context->builder->get.getInt32(value);
    Value *objStore = new AllocaInst(dreamObjPtrTy, 0, "int_stack", context->currentBlock);
    Value * callResult = context->builder->get.CreateCall(functions["int"], builtInt);
    Value * e = new StoreInst(callResult, objStore, context->currentBlock);
    return e;
}


Value * numVal(LLVMData* context, Value * value){
    Value *objStore = new AllocaInst(dreamObjPtrTy, 0, "int_stack", context->currentBlock);
    Value * callResult = context->builder->get.CreateCall(functions["int"], value);
    new StoreInst(callResult, objStore, context->currentBlock);
    LoadInst * object = new LoadInst(dreamObjPtrTy, objStore, "int", context->currentBlock);
    return object;
}



Value* get_value(LLVMData* context, Type * type, Value * obj ){
    std::vector<llvm::Value*> indices(2);
    indices[0] = llvm::ConstantInt::get(context->context, llvm::APInt(32, 0, true));
    indices[1] = llvm::ConstantInt::get(context->context, llvm::APInt(32, 2, true));
    Value *valuePointer = context->builder->get.CreateGEP(obj, indices,  "memberptr");
    LoadInst *value = new LoadInst(type, valuePointer, "temp", context->currentBlock);
    

    return value;
}




Value * add(LLVMData* context, Value *var1, Value *var2){
    Value* value1 = get_value(context, Type::getInt32Ty(context->context), var1);
    Value* value2 = get_value(context, Type::getInt32Ty(context->context), var2);
    return numVal(context, context->builder->get.CreateAdd(value1, value2));
    //return context->builder->get.CreateAdd(value1, value2);
}

Value * mul(LLVMData* context, Value *var1, Value *var2){
    Value* value1 = get_value(context, Type::getInt32Ty(context->context), var1);
    Value* value2 = get_value(context, Type::getInt32Ty(context->context), var2);
    return numVal(context, context->builder->get.CreateMul(value1, value2));
    //return context->builder->get.CreateAdd(value1, value2);
}

Value * divi(LLVMData* context, Value *var1, Value *var2){
    Value* value1 = get_value(context, Type::getInt32Ty(context->context), var1);
    Value* value2 = get_value(context, Type::getInt32Ty(context->context), var2);
    //return numVal(context, context->builder->get.CreateSDiv(value1, value2));
    return numVal(context, context->builder->get.CreateSDiv(value1, value2));
    //return context->builder->get.CreateAdd(value1, value2);
}

Value * sub(LLVMData* context, Value *var1, Value *var2){
    Value* value1 = get_value(context, Type::getInt32Ty(context->context), var1);
    Value* value2 = get_value(context, Type::getInt32Ty(context->context), var2);
    return numVal(context, context->builder->get.CreateSub(value1, value2));
    //return context->builder->get.CreateAdd(value1, value2);
}

Value * retVal(LLVMData* context, Value * value ){
    return context->builder->get.CreateRet(value);
    
}

Value * funcScope(FuncData * data){
    return data -> scope;
}

void luv(LLVMData * context){
    //test2b(context);
   

    //retVal(context, llvmInt(context, 59));
}

int main(){

    LLVMData * context = llvm_init();
    

    //Value * int1 = num(context, 400);
    /*
    
    Value * int1 = num(context, 400);

    Value * twenty = add(context, num(context, 10), num(context, 10));
    call_standard(context, "print", add(context, int1, twenty));

    
    
        */
    //Value * args[] = {int1};
    //call_standard(context, "print",  args);
    
    /*
    Value * ar[1]  = {int1};
    call_standard_c(context, "print", 1, ar);

    context->builder->get.CreateRet(context->builder->get.getInt32(0));*/
    
    
   // Value * num1 = num(context, 13);
   // Value * num2 = num(context, 2);
    //Value * result = divi(context, num1, num2);
    //call_standard(context, "print", result);
    
    
    //for(int i=0;i<1000;i++){
    //create scope
        Value * scope = str(context, "[scope]");
        set_var_llvm(context, scope, "he", str(context, "wooo"));
        Value * f = get_var_llvm(context, scope, "he");
        call_standard(context, "print", f);
        
        set_var_llvm(context, scope, "he", str(context, "meow"));
        Value * a = get_var_llvm(context, scope, "he");
            
        set_var_llvm(context, scope, "he", str(context, "meow"));
        Value * b = get_var_llvm(context, scope, "he");
      
    call_standard(context, "print", b);
    //}
    /*
    //func start
    FuncData *new_func = func(context, scope, "dog", 0, new const char * []{ });
    
        //func body
        //call_standard(context, "print", get_var_llvm(context, new_func->scope, "peace"));
        call_standard(context, "print", str(context, "oo"));
        //for(int i=0;i<10;i++)
        //call_standard_c(context, "print", 1, new Value *[]{str(context, "freak")});
    
        //retVal(context, get_var_llvm(context, new_func->scope, "war"));
        retVal(context, str(context, "hello"));
    
    //func end
    end_func(context, scope, new_func);

    //call & print function
    //Value * home = call_standard_c(context, "dog", 1, new Value*[]{scope});
    //call_standard(context, "print", get_var_llvm(context, scope, "war"));
    //call_standard(context, "print", home);
 //   call_standard(context, "print", get_var_llvm(context, scope, "in_this_house"));
    
    call(context, load(context, scope, "print"), 1, new Value*[]{scope});
    context->builder->get.CreateRet(context->builder->get.getInt32(0));*/
   
    
    /*
    Value * scope = str(context, "[scope]");
    call_standard(context, "set_var", {scope, llvmStrConst(context, "few"), str(context, "works,,,")});
    Value * got = call_standard(context, "get_var", {scope, llvmStrConst(context, "few")});
    call_standard(context, "print", got);
   */
    context->builder->get.CreateRet(context->builder->get.getInt32(69));
    llvm_run(context, false, false);
    return 0;

}

};