; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@line = external global i32
@0 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@1 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@8 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@11 = private unnamed_addr constant [12 x i8] c"getPrevious\00", align 1
@12 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@13 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@14 = private unnamed_addr constant [10 x i8] c"three_obj\00", align 1
@15 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@16 = private unnamed_addr constant [10 x i8] c"three_obj\00", align 1
@17 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@18 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@19 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@20 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@21 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@22 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@23 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@24 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@25 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@26 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@27 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@28 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@29 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@30 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@31 = private unnamed_addr constant [12 x i8] c"getPrevious\00", align 1
@32 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@33 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@34 = private unnamed_addr constant [8 x i8] c"two_obj\00", align 1
@35 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@36 = private unnamed_addr constant [8 x i8] c"two_obj\00", align 1
@37 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@38 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@39 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@40 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@41 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@42 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@43 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@44 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@45 = private unnamed_addr constant [8 x i8] c"one_obj\00", align 1
@46 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@47 = private unnamed_addr constant [8 x i8] c"one_obj\00", align 1
@48 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@49 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@50 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@51 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@52 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@53 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@54 = private unnamed_addr constant [24 x i8] c"object property call #1\00", align 1
@55 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@56 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@57 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@58 = private unnamed_addr constant [43 x i8] c"object property variable to method call #2\00", align 1
@59 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@60 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@61 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@62 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@63 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@64 = private unnamed_addr constant [29 x i8] c"nested object property call \00", align 1
@65 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@66 = private unnamed_addr constant [12 x i8] c"getPrevious\00", align 1
@67 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@68 = private unnamed_addr constant [12 x i8] c"getPrevious\00", align 1
@69 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@70 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@71 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@72 = private unnamed_addr constant [15 x i8] c"AndroidContext\00", align 1
@73 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %func_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @AndroidContext to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @72, i32 0, i32 0), %dreamObj* %func)
  %3 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @73, i32 0, i32 0), %dreamObj* %obj)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

declare void @dream_log(%dreamObj*)

declare %dreamObj* @pointer(%dreamObj*)

declare %dreamObj* @ptr(%dreamObj*)

declare i32 @printf(i8*, ...)

declare %dreamObj* @dreamObject()

declare %dreamObj* @set_var(%dreamObj*, i8*, %dreamObj*)

declare %dreamObj* @set_var_c(%dreamObj*, i8*)

declare %dreamObj* @get_var(%dreamObj*, i8*, ...)

declare %dreamObj* @equals_c(%dreamObj*, %dreamObj*)

declare %dreamObj* @contains_c(%dreamObj*, %dreamObj*)

declare %dreamObj* @dreamStr(i8*)

declare %dreamObj* @dreamInt(i32)

declare %dreamObj* @dreamBool(i32)

declare %dreamObj* @dreamFunc(i8*)

declare %dreamObj* @make_dream(i8*, ...)

declare %dreamObj* @new_scope(%dreamObj*, i32)

declare %dreamObj* @copy(%dreamObj*)

declare %dreamObj* @deep_copy(%dreamObj*)

declare %dreamObj* @shallow_copy(%dreamObj*)

declare %dreamObj* @dict()

declare %dreamObj* @add_c(%dreamObj*, %dreamObj*)

declare %dreamObj* @set_parent(%dreamObj*, %dreamObj*)

declare void @merge(%dreamObj*, %dreamObj*)

declare i8* @ctype(%dreamObj*)

declare void @display()

declare void @native_int(i32)

declare void @native_test(i32)

declare void @check(%dreamObj*, %dreamObj*)

define %dreamObj* @AndroidContext(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*)* @three_obj to i8*), %dreamObj** null)
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %1 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @14, i32 0, i32 0), %dreamObj* %obj)
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), %dreamObj* %func)
  %func_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @three to i8*))
  store %dreamObj* %3, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @18, i32 0, i32 0), %dreamObj* %func2)
  %5 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), %dreamObj* %func)
  store i32 12, i32* @line, align 4
  %obj_stack3 = alloca %dreamObj*, align 8
  %6 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*)* @two_obj to i8*), %dreamObj** null)
  store %dreamObj* %6, %dreamObj** %obj_stack3, align 8
  %obj4 = load %dreamObj*, %dreamObj** %obj_stack3, align 8
  %7 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @34, i32 0, i32 0), %dreamObj* %obj4)
  %8 = call %dreamObj* @set_var(%dreamObj* %obj4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @35, i32 0, i32 0), %dreamObj* %func)
  %func_stack5 = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @two to i8*))
  store %dreamObj* %9, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8
  %10 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @38, i32 0, i32 0), %dreamObj* %func6)
  %11 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), %dreamObj* %func)
  store i32 23, i32* @line, align 4
  %obj_stack7 = alloca %dreamObj*, align 8
  %12 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*)* @one_obj to i8*), %dreamObj** null)
  store %dreamObj* %12, %dreamObj** %obj_stack7, align 8
  %obj8 = load %dreamObj*, %dreamObj** %obj_stack7, align 8
  %13 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @45, i32 0, i32 0), %dreamObj* %obj8)
  %14 = call %dreamObj* @set_var(%dreamObj* %obj8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @46, i32 0, i32 0), %dreamObj* %func)
  %func_stack9 = alloca %dreamObj*, align 8
  %15 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @one to i8*))
  store %dreamObj* %15, %dreamObj** %func_stack9, align 8
  %func10 = load %dreamObj*, %dreamObj** %func_stack9, align 8
  %16 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @49, i32 0, i32 0), %dreamObj* %func10)
  %17 = call %dreamObj* @set_var(%dreamObj* %func10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0), %dreamObj* %func)
  store i32 29, i32* @line, align 4
  %18 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @51, i32 0, i32 0))
  %19 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @52, i32 0, i32 0))
  %20 = call %dreamObj* @new_scope(%dreamObj* %19, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %20, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %18, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %21 = bitcast i8* %value_temp to %dreamObj* (...)*
  %22 = call %dreamObj* (...) %21(%dreamObj* %new_scope)
  %23 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @53, i32 0, i32 0), %dreamObj* %22)
  store i32 31, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %24 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @54, i32 0, i32 0))
  store %dreamObj* %24, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %int_stack = alloca %dreamObj*, align 8
  %25 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %25, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %int_stack11 = alloca %dreamObj*, align 8
  %26 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %26, %dreamObj** %int_stack11, align 8
  %int12 = load %dreamObj*, %dreamObj** %int_stack11, align 8
  %27 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @55, i32 0, i32 0))
  %28 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @56, i32 0, i32 0), i32 0)
  %29 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0))
  %30 = call %dreamObj* @new_scope(%dreamObj* %29, i32 1)
  %scope_stack13 = alloca %dreamObj*, align 8
  store %dreamObj* %30, %dreamObj** %scope_stack13, align 8
  %new_scope14 = load %dreamObj*, %dreamObj** %scope_stack13, align 8
  %memberptr15 = getelementptr %dreamObj, %dreamObj* %28, i32 0, i32 2
  %value_temp16 = load i8*, i8** %memberptr15, align 8
  %31 = bitcast i8* %value_temp16 to %dreamObj* (...)*
  %32 = call %dreamObj* (...) %31(%dreamObj* %new_scope14, %dreamObj* %int12)
  %func_stack17 = alloca %dreamObj*, align 8
  %33 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @check to i8*))
  store %dreamObj* %33, %dreamObj** %func_stack17, align 8
  %func18 = load %dreamObj*, %dreamObj** %func_stack17, align 8, !var_args !1
  %memberptr19 = getelementptr %dreamObj, %dreamObj* %func18, i32 0, i32 2
  %value_temp20 = load i8*, i8** %memberptr19, align 8
  %34 = bitcast i8* %value_temp20 to %dreamObj* (...)*
  %35 = call %dreamObj* (...) %34(%dreamObj* %str, %dreamObj* %int, %dreamObj* %32)
  store i32 32, i32* @line, align 4
  %str_stack21 = alloca %dreamObj*, align 8
  %36 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @58, i32 0, i32 0))
  store %dreamObj* %36, %dreamObj** %str_stack21, align 8
  %str22 = load %dreamObj*, %dreamObj** %str_stack21, align 8
  %int_stack23 = alloca %dreamObj*, align 8
  %37 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %37, %dreamObj** %int_stack23, align 8
  %int24 = load %dreamObj*, %dreamObj** %int_stack23, align 8
  %int_stack25 = alloca %dreamObj*, align 8
  %38 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %38, %dreamObj** %int_stack25, align 8
  %int26 = load %dreamObj*, %dreamObj** %int_stack25, align 8
  %39 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @59, i32 0, i32 0))
  %40 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @60, i32 0, i32 0), i32 0)
  %41 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @61, i32 0, i32 0), i32 0)
  %42 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0), i32 0)
  %43 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0))
  %44 = call %dreamObj* @new_scope(%dreamObj* %43, i32 1)
  %scope_stack27 = alloca %dreamObj*, align 8
  store %dreamObj* %44, %dreamObj** %scope_stack27, align 8
  %new_scope28 = load %dreamObj*, %dreamObj** %scope_stack27, align 8
  %memberptr29 = getelementptr %dreamObj, %dreamObj* %42, i32 0, i32 2
  %value_temp30 = load i8*, i8** %memberptr29, align 8
  %45 = bitcast i8* %value_temp30 to %dreamObj* (...)*
  %46 = call %dreamObj* (...) %45(%dreamObj* %new_scope28, %dreamObj* %int26)
  %func_stack31 = alloca %dreamObj*, align 8
  %47 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @check to i8*))
  store %dreamObj* %47, %dreamObj** %func_stack31, align 8
  %func32 = load %dreamObj*, %dreamObj** %func_stack31, align 8, !var_args !1
  %memberptr33 = getelementptr %dreamObj, %dreamObj* %func32, i32 0, i32 2
  %value_temp34 = load i8*, i8** %memberptr33, align 8
  %48 = bitcast i8* %value_temp34 to %dreamObj* (...)*
  %49 = call %dreamObj* (...) %48(%dreamObj* %str22, %dreamObj* %int24, %dreamObj* %46)
  store i32 33, i32* @line, align 4
  %str_stack35 = alloca %dreamObj*, align 8
  %50 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @64, i32 0, i32 0))
  store %dreamObj* %50, %dreamObj** %str_stack35, align 8
  %str36 = load %dreamObj*, %dreamObj** %str_stack35, align 8
  %int_stack37 = alloca %dreamObj*, align 8
  %51 = call %dreamObj* @dreamInt(i32 10)
  store %dreamObj* %51, %dreamObj** %int_stack37, align 8
  %int38 = load %dreamObj*, %dreamObj** %int_stack37, align 8
  %int_stack39 = alloca %dreamObj*, align 8
  %52 = call %dreamObj* @dreamInt(i32 10)
  store %dreamObj* %52, %dreamObj** %int_stack39, align 8
  %int40 = load %dreamObj*, %dreamObj** %int_stack39, align 8
  %53 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @65, i32 0, i32 0))
  %54 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @66, i32 0, i32 0), i32 0)
  %55 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0))
  %56 = call %dreamObj* @new_scope(%dreamObj* %55, i32 1)
  %scope_stack41 = alloca %dreamObj*, align 8
  store %dreamObj* %56, %dreamObj** %scope_stack41, align 8
  %new_scope42 = load %dreamObj*, %dreamObj** %scope_stack41, align 8
  %memberptr43 = getelementptr %dreamObj, %dreamObj* %54, i32 0, i32 2
  %value_temp44 = load i8*, i8** %memberptr43, align 8
  %57 = bitcast i8* %value_temp44 to %dreamObj* (...)*
  %58 = call %dreamObj* (...) %57(%dreamObj* %new_scope42)
  %59 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @68, i32 0, i32 0), i32 0)
  %60 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @69, i32 0, i32 0))
  %61 = call %dreamObj* @new_scope(%dreamObj* %60, i32 1)
  %scope_stack45 = alloca %dreamObj*, align 8
  store %dreamObj* %61, %dreamObj** %scope_stack45, align 8
  %new_scope46 = load %dreamObj*, %dreamObj** %scope_stack45, align 8
  %memberptr47 = getelementptr %dreamObj, %dreamObj* %59, i32 0, i32 2
  %value_temp48 = load i8*, i8** %memberptr47, align 8
  %62 = bitcast i8* %value_temp48 to %dreamObj* (...)*
  %63 = call %dreamObj* (...) %62(%dreamObj* %new_scope46)
  %64 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @70, i32 0, i32 0), i32 0)
  %65 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @71, i32 0, i32 0))
  %66 = call %dreamObj* @new_scope(%dreamObj* %65, i32 1)
  %scope_stack49 = alloca %dreamObj*, align 8
  store %dreamObj* %66, %dreamObj** %scope_stack49, align 8
  %new_scope50 = load %dreamObj*, %dreamObj** %scope_stack49, align 8
  %memberptr51 = getelementptr %dreamObj, %dreamObj* %64, i32 0, i32 2
  %value_temp52 = load i8*, i8** %memberptr51, align 8
  %67 = bitcast i8* %value_temp52 to %dreamObj* (...)*
  %68 = call %dreamObj* (...) %67(%dreamObj* %new_scope50, %dreamObj* %int40)
  %func_stack53 = alloca %dreamObj*, align 8
  %69 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @check to i8*))
  store %dreamObj* %69, %dreamObj** %func_stack53, align 8
  %func54 = load %dreamObj*, %dreamObj** %func_stack53, align 8, !var_args !1
  %memberptr55 = getelementptr %dreamObj, %dreamObj* %func54, i32 0, i32 2
  %value_temp56 = load i8*, i8** %memberptr55, align 8
  %70 = bitcast i8* %value_temp56 to %dreamObj* (...)*
  %71 = call %dreamObj* (...) %70(%dreamObj* %str36, %dreamObj* %int38, %dreamObj* %68)
  ret %dreamObj* %func
}

define %dreamObj* @three_obj(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 2, i32* @line, align 4
  %1 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0))
  %2 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0))
  %3 = call %dreamObj* @new_scope(%dreamObj* %2, i32 1)
  %scope_stack1 = alloca %dreamObj*, align 8
  store %dreamObj* %3, %dreamObj** %scope_stack1, align 8
  %new_scope2 = load %dreamObj*, %dreamObj** %scope_stack1, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %1, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to %dreamObj* (...)*
  %5 = call %dreamObj* (...) %4(%dreamObj* %new_scope2)
  %6 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2, i32 0, i32 0), %dreamObj* %5)
  store i32 3, i32* @line, align 4
  %func_stack3 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*)* @value to i8*))
  store %dreamObj* %7, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8
  %8 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @8, i32 0, i32 0), %dreamObj* %func4)
  %9 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), %dreamObj* %new_scope)
  store i32 7, i32* @line, align 4
  %func_stack5 = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @getPrevious to i8*))
  store %dreamObj* %10, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8
  %11 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), %dreamObj* %func6)
  %12 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), %dreamObj* %new_scope)
  %13 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @13, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @value(%dreamObj* %scope, %dreamObj* %m) !arg_names !2 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %m, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 5, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %2 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0))
  %3 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0), i32 0)
  %4 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0))
  %5 = call %dreamObj* @new_scope(%dreamObj* %4, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %5, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %3, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %6 = bitcast i8* %value_temp to %dreamObj* (...)*
  %7 = call %dreamObj* (...) %6(%dreamObj* %new_scope, %dreamObj* %int)
  %int_stack1 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %8, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %9 = call %dreamObj* @add_c(%dreamObj* %7, %dreamObj* %int2)
  %10 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0))
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %9, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %11 = bitcast i8* %value_temp4 to i32*
  %temp = load i32, i32* %11, align 4
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %10, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %12 = bitcast i8* %value_temp6 to i32*
  %temp7 = load i32, i32* %12, align 4
  %13 = mul i32 %temp, %temp7
  %int_stack8 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamInt(i32 %13)
  store %dreamObj* %14, %dreamObj** %int_stack8, align 8
  %int9 = load %dreamObj*, %dreamObj** %int_stack8, align 8
  ret %dreamObj* %int9
}

define %dreamObj* @getPrevious(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 8, i32* @line, align 4
  %0 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0))
  ret %dreamObj* %0
}

define %dreamObj* @three(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @16, i32 0, i32 0))
  %1 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0))
  %2 = call %dreamObj* @new_scope(%dreamObj* %1, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %2, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %0, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %new_scope)
  %obj_stack = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamObject()
  store %dreamObj* %5, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %6 = call %dreamObj* @set_parent(%dreamObj* %obj, %dreamObj* %4)
  %parent_stack = alloca %dreamObj*, align 8
  store %dreamObj* %6, %dreamObj** %parent_stack, align 8
  %new_parentee = load %dreamObj*, %dreamObj** %parent_stack, align 8
  %func_stack1 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @merge to i8*))
  store %dreamObj* %7, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !1
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %8 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %9 = call %dreamObj* (...) %8(%dreamObj* %obj, %dreamObj* %func)
  ret %dreamObj* %4
}

define %dreamObj* @two_obj(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 13, i32* @line, align 4
  %1 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @20, i32 0, i32 0))
  %2 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0))
  %3 = call %dreamObj* @new_scope(%dreamObj* %2, i32 1)
  %scope_stack1 = alloca %dreamObj*, align 8
  store %dreamObj* %3, %dreamObj** %scope_stack1, align 8
  %new_scope2 = load %dreamObj*, %dreamObj** %scope_stack1, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %1, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to %dreamObj* (...)*
  %5 = call %dreamObj* (...) %4(%dreamObj* %new_scope2)
  %6 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), %dreamObj* %5)
  store i32 14, i32* @line, align 4
  %func_stack3 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*)* @value.1 to i8*))
  store %dreamObj* %7, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8
  %8 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @28, i32 0, i32 0), %dreamObj* %func4)
  %9 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), %dreamObj* %new_scope)
  store i32 18, i32* @line, align 4
  %func_stack5 = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @getPrevious.2 to i8*))
  store %dreamObj* %10, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8
  %11 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @31, i32 0, i32 0), %dreamObj* %func6)
  %12 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @32, i32 0, i32 0), %dreamObj* %new_scope)
  %13 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @33, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @value.1(%dreamObj* %scope, %dreamObj* %m) !arg_names !2 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %m, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @23, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 16, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %2 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0))
  %3 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @25, i32 0, i32 0), i32 0)
  %4 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0))
  %5 = call %dreamObj* @new_scope(%dreamObj* %4, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %5, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %3, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %6 = bitcast i8* %value_temp to %dreamObj* (...)*
  %7 = call %dreamObj* (...) %6(%dreamObj* %new_scope, %dreamObj* %int)
  %int_stack1 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %8, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %9 = call %dreamObj* @add_c(%dreamObj* %7, %dreamObj* %int2)
  %10 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @27, i32 0, i32 0))
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %9, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %11 = bitcast i8* %value_temp4 to i32*
  %temp = load i32, i32* %11, align 4
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %10, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %12 = bitcast i8* %value_temp6 to i32*
  %temp7 = load i32, i32* %12, align 4
  %13 = mul i32 %temp, %temp7
  %int_stack8 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamInt(i32 %13)
  store %dreamObj* %14, %dreamObj** %int_stack8, align 8
  %int9 = load %dreamObj*, %dreamObj** %int_stack8, align 8
  ret %dreamObj* %int9
}

define %dreamObj* @getPrevious.2(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 19, i32* @line, align 4
  %0 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @30, i32 0, i32 0))
  ret %dreamObj* %0
}

define %dreamObj* @two(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @36, i32 0, i32 0))
  %1 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @37, i32 0, i32 0))
  %2 = call %dreamObj* @new_scope(%dreamObj* %1, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %2, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %0, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %new_scope)
  %obj_stack = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamObject()
  store %dreamObj* %5, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %6 = call %dreamObj* @set_parent(%dreamObj* %obj, %dreamObj* %4)
  %parent_stack = alloca %dreamObj*, align 8
  store %dreamObj* %6, %dreamObj** %parent_stack, align 8
  %new_parentee = load %dreamObj*, %dreamObj** %parent_stack, align 8
  %func_stack1 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @merge to i8*))
  store %dreamObj* %7, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !1
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %8 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %9 = call %dreamObj* (...) %8(%dreamObj* %obj, %dreamObj* %func)
  ret %dreamObj* %4
}

define %dreamObj* @one_obj(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 24, i32* @line, align 4
  %func_stack1 = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*)* @value.3 to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @42, i32 0, i32 0), %dreamObj* %func2)
  %3 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), %dreamObj* %new_scope)
  %4 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @44, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @value.3(%dreamObj* %scope, %dreamObj* %m) !arg_names !2 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %m, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @40, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 25, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %2 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @41, i32 0, i32 0))
  %memberptr = getelementptr %dreamObj, %dreamObj* %int, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to i32*
  %temp = load i32, i32* %3, align 4
  %memberptr1 = getelementptr %dreamObj, %dreamObj* %2, i32 0, i32 2
  %value_temp2 = load i8*, i8** %memberptr1, align 8
  %4 = bitcast i8* %value_temp2 to i32*
  %temp3 = load i32, i32* %4, align 4
  %5 = mul i32 %temp, %temp3
  %int_stack4 = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamInt(i32 %5)
  store %dreamObj* %6, %dreamObj** %int_stack4, align 8
  %int5 = load %dreamObj*, %dreamObj** %int_stack4, align 8
  ret %dreamObj* %int5
}

define %dreamObj* @one(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @47, i32 0, i32 0))
  %1 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @48, i32 0, i32 0))
  %2 = call %dreamObj* @new_scope(%dreamObj* %1, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %2, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %0, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %new_scope)
  %obj_stack = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamObject()
  store %dreamObj* %5, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %6 = call %dreamObj* @set_parent(%dreamObj* %obj, %dreamObj* %4)
  %parent_stack = alloca %dreamObj*, align 8
  store %dreamObj* %6, %dreamObj** %parent_stack, align 8
  %new_parentee = load %dreamObj*, %dreamObj** %parent_stack, align 8
  %func_stack1 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @merge to i8*))
  store %dreamObj* %7, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !1
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %8 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %9 = call %dreamObj* (...) %8(%dreamObj* %obj, %dreamObj* %func)
  ret %dreamObj* %4
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{}
!1 = !{!"0"}
!2 = !{!"m"}
