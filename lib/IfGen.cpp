//
//  IfGen.cpp
//  DreamLLVM
//
//  Created by Marc Fervil on 2/28/21.
//

#include "IfGen.hpp"

extern "C"{

    IfData * init_if(LLVMData * context, Value * var1, Value * var2){
         
        IfData * if_data = new IfData();
        Value *equ = call_standard(context, "equals", {var1, var2});
        Type * int32Type = Type::getInt32Ty(context->context);
        LoadInst *equ_result = get_pointer_value(context, int32Type, equ);
        Value *if_comp = context->builder->get.CreateICmpEQ(equ_result, llvmInt(context, 1));
        
        if_data->then = BasicBlock::Create(context->context, "then", context->mainFunc);
        if_data->ifcont = BasicBlock::Create(context->context, "ifcont");
        
        context->builder->get.CreateCondBr(if_comp, if_data->then, if_data->ifcont);
        
        context->currentBlock = if_data->then;
        context->builder->get.SetInsertPoint(context->currentBlock);
        
        
        
        return if_data;
    }

    IfData * end_if(LLVMData * context, IfData * if_data){
        context->builder->get.CreateBr(if_data->ifcont);
        context->mainFunc->getBasicBlockList().push_back(if_data->ifcont);
        context->currentBlock = if_data->ifcont;
        context->builder->get.SetInsertPoint(context->currentBlock);
        return if_data;
    }

    
}
