; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [21 x i8] c"[greeting goes here]\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@3 = private unnamed_addr constant [8 x i8] c"get_msg\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@6 = private unnamed_addr constant [8 x i8] c"get_msg\00", align 1
@7 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@8 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@11 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@12 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@13 = private unnamed_addr constant [16 x i8] c"CustomGreet_obj\00", align 1
@14 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@15 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@16 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@17 = private unnamed_addr constant [16 x i8] c"CustomGreet_obj\00", align 1
@18 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@19 = private unnamed_addr constant [12 x i8] c"CustomGreet\00", align 1
@20 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@21 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@22 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@23 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@24 = private unnamed_addr constant [10 x i8] c"Hello_obj\00", align 1
@25 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@26 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@27 = private unnamed_addr constant [10 x i8] c"Hello_obj\00", align 1
@28 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@29 = private unnamed_addr constant [12 x i8] c"CustomGreet\00", align 1
@30 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@31 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@32 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@33 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@34 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@35 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@36 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@37 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@39 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@40 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@41 = private unnamed_addr constant [3 x i8] c", \00", align 1
@42 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@43 = private unnamed_addr constant [8 x i8] c"get_msg\00", align 1
@44 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@45 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@46 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@47 = private unnamed_addr constant [18 x i8] c"AdvancedHello_obj\00", align 1
@48 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@49 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@50 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@51 = private unnamed_addr constant [18 x i8] c"AdvancedHello_obj\00", align 1
@52 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@53 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@54 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@55 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@56 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@57 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@58 = private unnamed_addr constant [14 x i8] c"AdvancedHello\00", align 1
@59 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@60 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@61 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@62 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@63 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@64 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@65 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@66 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@67 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@68 = private unnamed_addr constant [5 x i8] c"marc\00", align 1
@69 = private unnamed_addr constant [14 x i8] c"AdvancedHello\00", align 1
@70 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@71 = private unnamed_addr constant [10 x i8] c"new_hello\00", align 1
@72 = private unnamed_addr constant [10 x i8] c"new_hello\00", align 1
@73 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@74 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %obj_stack1 = alloca %dreamObj*, align 8
  %1 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @CustomGreet_obj to i8*), %dreamObj** null)
  store %dreamObj* %1, %dreamObj** %obj_stack1, align 8
  %obj2 = load %dreamObj*, %dreamObj** %obj_stack1, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), %dreamObj* %obj2)
  %3 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), %dreamObj* %obj)
  %func_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %4, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %5 = bitcast i8* %value_temp to %dreamObj* (...)*
  %6 = call %dreamObj* (...) %5(i32 0)
  %7 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @15, i32 0, i32 0), %dreamObj* %6)
  %func_stack3 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, ...)* @CustomGreet to i8*))
  store %dreamObj* %8, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8
  %9 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), %dreamObj* %func4)
  %10 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), %dreamObj* %obj)
  %str_stack = alloca %dreamObj*, align 8
  %11 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @21, i32 0, i32 0))
  store %dreamObj* %11, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack5 = alloca %dreamObj*, align 8
  %12 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %12, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !0
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %13 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %14 = call %dreamObj* (...) %13(i32 1, %dreamObj* %str)
  %15 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @22, i32 0, i32 0), %dreamObj* %14)
  store i32 16, i32* @line, align 4
  %obj_stack9 = alloca %dreamObj*, align 8
  %16 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @Hello_obj to i8*), %dreamObj** null)
  store %dreamObj* %16, %dreamObj** %obj_stack9, align 8
  %obj10 = load %dreamObj*, %dreamObj** %obj_stack9, align 8
  %17 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @24, i32 0, i32 0), %dreamObj* %obj10)
  %18 = call %dreamObj* @set_var(%dreamObj* %obj10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), %dreamObj* %obj)
  %func_stack11 = alloca %dreamObj*, align 8
  %19 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %19, %dreamObj** %func_stack11, align 8
  %func12 = load %dreamObj*, %dreamObj** %func_stack11, align 8, !var_args !0
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %func12, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %20 = bitcast i8* %value_temp14 to %dreamObj* (...)*
  %21 = call %dreamObj* (...) %20(i32 0)
  %22 = call %dreamObj* @set_var(%dreamObj* %obj10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0), %dreamObj* %21)
  %func_stack15 = alloca %dreamObj*, align 8
  %23 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @Hello to i8*))
  store %dreamObj* %23, %dreamObj** %func_stack15, align 8
  %func16 = load %dreamObj*, %dreamObj** %func_stack15, align 8
  %24 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @35, i32 0, i32 0), %dreamObj* %func16)
  %25 = call %dreamObj* @set_var(%dreamObj* %func16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @36, i32 0, i32 0), %dreamObj* %obj)
  %func_stack17 = alloca %dreamObj*, align 8
  %26 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %26, %dreamObj** %func_stack17, align 8
  %func18 = load %dreamObj*, %dreamObj** %func_stack17, align 8, !var_args !0
  %memberptr19 = getelementptr %dreamObj, %dreamObj* %func18, i32 0, i32 2
  %value_temp20 = load i8*, i8** %memberptr19, align 8
  %27 = bitcast i8* %value_temp20 to %dreamObj* (...)*
  %28 = call %dreamObj* (...) %27(i32 0)
  %29 = call %dreamObj* @set_var(%dreamObj* %func16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @37, i32 0, i32 0), %dreamObj* %28)
  store i32 24, i32* @line, align 4
  %obj_stack21 = alloca %dreamObj*, align 8
  %30 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @AdvancedHello_obj to i8*), %dreamObj** null)
  store %dreamObj* %30, %dreamObj** %obj_stack21, align 8
  %obj22 = load %dreamObj*, %dreamObj** %obj_stack21, align 8
  %31 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @47, i32 0, i32 0), %dreamObj* %obj22)
  %32 = call %dreamObj* @set_var(%dreamObj* %obj22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @48, i32 0, i32 0), %dreamObj* %obj)
  %func_stack23 = alloca %dreamObj*, align 8
  %33 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %33, %dreamObj** %func_stack23, align 8
  %func24 = load %dreamObj*, %dreamObj** %func_stack23, align 8, !var_args !0
  %memberptr25 = getelementptr %dreamObj, %dreamObj* %func24, i32 0, i32 2
  %value_temp26 = load i8*, i8** %memberptr25, align 8
  %34 = bitcast i8* %value_temp26 to %dreamObj* (...)*
  %35 = call %dreamObj* (...) %34(i32 0)
  %36 = call %dreamObj* @set_var(%dreamObj* %obj22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @49, i32 0, i32 0), %dreamObj* %35)
  %func_stack27 = alloca %dreamObj*, align 8
  %37 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, ...)* @AdvancedHello to i8*))
  store %dreamObj* %37, %dreamObj** %func_stack27, align 8
  %func28 = load %dreamObj*, %dreamObj** %func_stack27, align 8
  %38 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @58, i32 0, i32 0), %dreamObj* %func28)
  %39 = call %dreamObj* @set_var(%dreamObj* %func28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0), %dreamObj* %obj)
  %str_stack29 = alloca %dreamObj*, align 8
  %40 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @60, i32 0, i32 0))
  store %dreamObj* %40, %dreamObj** %str_stack29, align 8
  %str30 = load %dreamObj*, %dreamObj** %str_stack29, align 8
  %func_stack31 = alloca %dreamObj*, align 8
  %41 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %41, %dreamObj** %func_stack31, align 8
  %func32 = load %dreamObj*, %dreamObj** %func_stack31, align 8, !var_args !0
  %memberptr33 = getelementptr %dreamObj, %dreamObj* %func32, i32 0, i32 2
  %value_temp34 = load i8*, i8** %memberptr33, align 8
  %42 = bitcast i8* %value_temp34 to %dreamObj* (...)*
  %43 = call %dreamObj* (...) %42(i32 1, %dreamObj* %str30)
  %44 = call %dreamObj* @set_var(%dreamObj* %func28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @61, i32 0, i32 0), %dreamObj* %43)
  store i32 38, i32* @line, align 4
  %45 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0), i32 1)
  %46 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), i32 1)
  %47 = call %dreamObj* @new_scope(%dreamObj* %46, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %47, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr35 = getelementptr %dreamObj, %dreamObj* %45, i32 0, i32 2
  %value_temp36 = load i8*, i8** %memberptr35, align 8
  %48 = bitcast i8* %value_temp36 to %dreamObj* (...)*
  %49 = call %dreamObj* (...) %48(%dreamObj* %new_scope)
  %50 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @64, i32 0, i32 0), %dreamObj* %49)
  store i32 39, i32* @line, align 4
  %51 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @65, i32 0, i32 0), i32 1)
  %52 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @66, i32 0, i32 0), i32 0)
  %53 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), i32 1)
  %54 = call %dreamObj* @new_scope(%dreamObj* %53, i32 1)
  %scope_stack37 = alloca %dreamObj*, align 8
  store %dreamObj* %54, %dreamObj** %scope_stack37, align 8
  %new_scope38 = load %dreamObj*, %dreamObj** %scope_stack37, align 8
  %memberptr39 = getelementptr %dreamObj, %dreamObj* %52, i32 0, i32 2
  %value_temp40 = load i8*, i8** %memberptr39, align 8
  %55 = bitcast i8* %value_temp40 to %dreamObj* (...)*
  %56 = call %dreamObj* (...) %55(%dreamObj* %new_scope38)
  store i32 41, i32* @line, align 4
  %str_stack41 = alloca %dreamObj*, align 8
  %57 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @68, i32 0, i32 0))
  store %dreamObj* %57, %dreamObj** %str_stack41, align 8
  %str42 = load %dreamObj*, %dreamObj** %str_stack41, align 8
  %58 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @69, i32 0, i32 0), i32 1)
  %59 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @70, i32 0, i32 0), i32 1)
  %60 = call %dreamObj* @new_scope(%dreamObj* %59, i32 1)
  %scope_stack43 = alloca %dreamObj*, align 8
  store %dreamObj* %60, %dreamObj** %scope_stack43, align 8
  %new_scope44 = load %dreamObj*, %dreamObj** %scope_stack43, align 8
  %memberptr45 = getelementptr %dreamObj, %dreamObj* %58, i32 0, i32 2
  %value_temp46 = load i8*, i8** %memberptr45, align 8
  %61 = bitcast i8* %value_temp46 to %dreamObj* (...)*
  %62 = call %dreamObj* (...) %61(%dreamObj* %new_scope44, %dreamObj* %str42)
  %63 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @71, i32 0, i32 0), %dreamObj* %62)
  store i32 42, i32* @line, align 4
  %64 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @72, i32 0, i32 0), i32 1)
  %65 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @73, i32 0, i32 0), i32 0)
  %66 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0), i32 1)
  %67 = call %dreamObj* @new_scope(%dreamObj* %66, i32 1)
  %scope_stack47 = alloca %dreamObj*, align 8
  store %dreamObj* %67, %dreamObj** %scope_stack47, align 8
  %new_scope48 = load %dreamObj*, %dreamObj** %scope_stack47, align 8
  %memberptr49 = getelementptr %dreamObj, %dreamObj* %65, i32 0, i32 2
  %value_temp50 = load i8*, i8** %memberptr49, align 8
  %68 = bitcast i8* %value_temp50 to %dreamObj* (...)*
  %69 = call %dreamObj* (...) %68(%dreamObj* %new_scope48)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

declare void @gc(%dreamObj*)

declare void @dream_log(%dreamObj*)

declare %dreamObj* @dreamList(i32, ...)

declare %dreamObj* @count(%dreamObj*)

declare %dreamObj* @pointer(%dreamObj*)

declare %dreamObj* @ptr(%dreamObj*)

declare i32 @printjf(i8*, ...)

declare %dreamObj* @dreamObject()

declare %dreamObj* @set_var(%dreamObj*, i8*, %dreamObj*)

declare %dreamObj* @set_var_c(%dreamObj*, i8*)

declare %dreamObj* @get_var(%dreamObj*, i8*, i32, ...)

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

declare void @dict(%dreamObj*)

declare void @inherit(%dreamObj*)

declare void @makeText(%dreamObj*)

declare %dreamObj* @add_c(%dreamObj*, %dreamObj*)

declare %dreamObj* @set_parent(%dreamObj*, %dreamObj*)

declare void @merge(%dreamObj*, %dreamObj*)

declare i8* @ctype(%dreamObj*)

declare void @display()

declare void @native_int(i32)

declare void @apply_vargs(%dreamObj*, %dreamObj*, %dreamObj*)

declare void @native_test(i32)

declare void @check(%dreamObj*, %dreamObj*)

define %dreamObj* @CustomGreet_obj(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 3, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0))
  store %dreamObj* %1, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i32 0, i32 0), %dreamObj* %str)
  store i32 7, i32* @line, align 4
  %func_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @get_msg to i8*))
  store %dreamObj* %3, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), %dreamObj* %func2)
  %5 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), %dreamObj* %new_scope)
  %func_stack3 = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %6, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func4, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %7 = bitcast i8* %value_temp to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(i32 0)
  %9 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @5, i32 0, i32 0), %dreamObj* %8)
  store i32 11, i32* @line, align 4
  %func_stack5 = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @show to i8*))
  store %dreamObj* %10, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8
  %11 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @9, i32 0, i32 0), %dreamObj* %func6)
  %12 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), %dreamObj* %new_scope)
  %func_stack7 = alloca %dreamObj*, align 8
  %13 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %13, %dreamObj** %func_stack7, align 8
  %func8 = load %dreamObj*, %dreamObj** %func_stack7, align 8, !var_args !0
  %memberptr9 = getelementptr %dreamObj, %dreamObj* %func8, i32 0, i32 2
  %value_temp10 = load i8*, i8** %memberptr9, align 8
  %14 = bitcast i8* %value_temp10 to %dreamObj* (...)*
  %15 = call %dreamObj* (...) %14(i32 0)
  %16 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @11, i32 0, i32 0), %dreamObj* %15)
  %17 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @get_msg(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 8, i32* @line, align 4
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0), i32 1)
  ret %dreamObj* %0
}

define %dreamObj* @show(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 12, i32* @line, align 4
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @6, i32 0, i32 0), i32 1)
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* @new_scope(%dreamObj* %1, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %2, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %0, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %new_scope)
  %func_stack1 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %5, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !0
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %6 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %7 = call %dreamObj* (...) %6(i32 1, %dreamObj* %4)
  %str_stack = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @8, i32 0, i32 0))
  store %dreamObj* %8, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  ret %dreamObj* %str
}

define %dreamObj* @CustomGreet(%dreamObj* %scope, %dreamObj* %msg, ...) !arg_names !2 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %msg, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @16, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i32 1)
  %3 = call %dreamObj* @new_scope(%dreamObj* %2, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %3, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %1, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to %dreamObj* (...)*
  %5 = call %dreamObj* (...) %4(%dreamObj* %new_scope)
  %obj_stack = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamObject()
  store %dreamObj* %6, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %7 = call %dreamObj* @set_parent(%dreamObj* %obj, %dreamObj* %5)
  %parent_stack = alloca %dreamObj*, align 8
  store %dreamObj* %7, %dreamObj** %parent_stack, align 8
  %new_parentee = load %dreamObj*, %dreamObj** %parent_stack, align 8
  %func_stack1 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @merge to i8*))
  store %dreamObj* %8, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !3
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %9 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %10 = call %dreamObj* (...) %9(%dreamObj* %obj, %dreamObj* %func)
  ret %dreamObj* %5
}

define %dreamObj* @Hello_obj(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %1 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @23, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @Hello(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i32 1)
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @28, i32 0, i32 0), i32 1)
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
  %7 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @29, i32 0, i32 0), i32 1)
  %func_stack1 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*)* @inherit to i8*))
  store %dreamObj* %8, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !3
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %9 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %10 = call %dreamObj* (...) %9(%dreamObj* %4, %dreamObj* %7, %dreamObj* %func)
  %func_stack5 = alloca %dreamObj*, align 8
  %11 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @merge to i8*))
  store %dreamObj* %11, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !3
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %12 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %13 = call %dreamObj* (...) %12(%dreamObj* %obj, %dreamObj* %func)
  store i32 19, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @30, i32 0, i32 0))
  store %dreamObj* %14, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %15 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @31, i32 0, i32 0), i32 1)
  %str_stack9 = alloca %dreamObj*, align 8
  %16 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @32, i32 0, i32 0))
  store %dreamObj* %16, %dreamObj** %str_stack9, align 8
  %str10 = load %dreamObj*, %dreamObj** %str_stack9, align 8
  %func_stack11 = alloca %dreamObj*, align 8
  %17 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %17, %dreamObj** %func_stack11, align 8
  %func12 = load %dreamObj*, %dreamObj** %func_stack11, align 8, !var_args !0
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %func12, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %18 = bitcast i8* %value_temp14 to %dreamObj* (...)*
  %19 = call %dreamObj* (...) %18(i32 1, %dreamObj* %str10)
  %20 = call %dreamObj* @set_var(%dreamObj* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @33, i32 0, i32 0), %dreamObj* %19)
  %func_stack15 = alloca %dreamObj*, align 8
  %21 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %21, %dreamObj** %func_stack15, align 8
  %func16 = load %dreamObj*, %dreamObj** %func_stack15, align 8, !var_args !0
  %memberptr17 = getelementptr %dreamObj, %dreamObj* %func16, i32 0, i32 2
  %value_temp18 = load i8*, i8** %memberptr17, align 8
  %22 = bitcast i8* %value_temp18 to %dreamObj* (...)*
  %23 = call %dreamObj* (...) %22(i32 1, %dreamObj* %str)
  %24 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @34, i32 0, i32 0), i32 1)
  %25 = call %dreamObj* @new_scope(%dreamObj* %24, i32 1)
  %scope_stack19 = alloca %dreamObj*, align 8
  store %dreamObj* %25, %dreamObj** %scope_stack19, align 8
  %new_scope20 = load %dreamObj*, %dreamObj** %scope_stack19, align 8
  %memberptr21 = getelementptr %dreamObj, %dreamObj* %15, i32 0, i32 2
  %value_temp22 = load i8*, i8** %memberptr21, align 8
  %26 = bitcast i8* %value_temp22 to %dreamObj* (...)*
  %27 = call %dreamObj* (...) %26(%dreamObj* %new_scope20, %dreamObj* %23)
  ret %dreamObj* %4
}

define %dreamObj* @AdvancedHello_obj(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 26, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @38, i32 0, i32 0))
  store %dreamObj* %1, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @39, i32 0, i32 0), %dreamObj* %str)
  store i32 32, i32* @line, align 4
  %func_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @get_msg.1 to i8*))
  store %dreamObj* %3, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @43, i32 0, i32 0), %dreamObj* %func2)
  %5 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0), %dreamObj* %new_scope)
  %func_stack3 = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %6, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func4, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %7 = bitcast i8* %value_temp to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(i32 0)
  %9 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @45, i32 0, i32 0), %dreamObj* %8)
  %10 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @46, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @get_msg.1(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 33, i32* @line, align 4
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @40, i32 0, i32 0), i32 1)
  %str_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @41, i32 0, i32 0))
  store %dreamObj* %1, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %2 = call %dreamObj* @add_c(%dreamObj* %0, %dreamObj* %str)
  %3 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @42, i32 0, i32 0), i32 1)
  %4 = call %dreamObj* @add_c(%dreamObj* %2, %dreamObj* %3)
  ret %dreamObj* %4
}

define %dreamObj* @AdvancedHello(%dreamObj* %scope, %dreamObj* %name, ...) !arg_names !4 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %name, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @50, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @51, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @52, i32 0, i32 0), i32 1)
  %3 = call %dreamObj* @new_scope(%dreamObj* %2, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %3, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %1, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to %dreamObj* (...)*
  %5 = call %dreamObj* (...) %4(%dreamObj* %new_scope)
  %obj_stack = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamObject()
  store %dreamObj* %6, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %7 = call %dreamObj* @set_parent(%dreamObj* %obj, %dreamObj* %5)
  %parent_stack = alloca %dreamObj*, align 8
  store %dreamObj* %7, %dreamObj** %parent_stack, align 8
  %new_parentee = load %dreamObj*, %dreamObj** %parent_stack, align 8
  %8 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @53, i32 0, i32 0), i32 1)
  %func_stack1 = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*)* @inherit to i8*))
  store %dreamObj* %9, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !3
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %10 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %11 = call %dreamObj* (...) %10(%dreamObj* %5, %dreamObj* %8, %dreamObj* %func)
  %func_stack5 = alloca %dreamObj*, align 8
  %12 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @merge to i8*))
  store %dreamObj* %12, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !3
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %13 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %14 = call %dreamObj* (...) %13(%dreamObj* %obj, %dreamObj* %func)
  store i32 29, i32* @line, align 4
  %15 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @54, i32 0, i32 0), i32 1)
  %str_stack = alloca %dreamObj*, align 8
  %16 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @55, i32 0, i32 0))
  store %dreamObj* %16, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack9 = alloca %dreamObj*, align 8
  %17 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %17, %dreamObj** %func_stack9, align 8
  %func10 = load %dreamObj*, %dreamObj** %func_stack9, align 8, !var_args !0
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %func10, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %18 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %19 = call %dreamObj* (...) %18(i32 1, %dreamObj* %str)
  %20 = call %dreamObj* @set_var(%dreamObj* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @56, i32 0, i32 0), %dreamObj* %19)
  %func_stack13 = alloca %dreamObj*, align 8
  %21 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %21, %dreamObj** %func_stack13, align 8
  %func14 = load %dreamObj*, %dreamObj** %func_stack13, align 8, !var_args !0
  %memberptr15 = getelementptr %dreamObj, %dreamObj* %func14, i32 0, i32 2
  %value_temp16 = load i8*, i8** %memberptr15, align 8
  %22 = bitcast i8* %value_temp16 to %dreamObj* (...)*
  %23 = call %dreamObj* (...) %22(i32 0)
  %24 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), i32 1)
  %25 = call %dreamObj* @new_scope(%dreamObj* %24, i32 1)
  %scope_stack17 = alloca %dreamObj*, align 8
  store %dreamObj* %25, %dreamObj** %scope_stack17, align 8
  %new_scope18 = load %dreamObj*, %dreamObj** %scope_stack17, align 8
  %memberptr19 = getelementptr %dreamObj, %dreamObj* %15, i32 0, i32 2
  %value_temp20 = load i8*, i8** %memberptr19, align 8
  %26 = bitcast i8* %value_temp20 to %dreamObj* (...)*
  %27 = call %dreamObj* (...) %26(%dreamObj* %new_scope18, %dreamObj* %23)
  ret %dreamObj* %5
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{}
!2 = !{!"msg"}
!3 = !{!"0"}
!4 = !{!"name"}
