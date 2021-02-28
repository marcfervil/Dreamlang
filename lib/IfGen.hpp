//
//  IfGen.hpp
//  DreamLLVM
//
//  Created by Marc Fervil on 2/28/21.
//

#ifndef IfGen_hpp
#define IfGen_hpp

#include <stdio.h>
#include "main.hpp"


extern "C"{

    using namespace llvm;
    using namespace std;

    typedef struct IfData{
        
        BasicBlock *then;
        BasicBlock* ifcont;
       
        
        
    } IfData;


    IfData * init_if(LLVMData * context, Value * var1, Value * var2);
    IfData * end_if(LLVMData * context, IfData * if_data);
}


#endif /* IfGen_hpp */
