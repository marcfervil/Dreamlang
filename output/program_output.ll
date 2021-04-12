; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@5 = private unnamed_addr constant [10 x i8] c"yaaayeeee\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@7 = private unnamed_addr constant [6 x i8] c"pfkwe\00", align 1
@8 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@11 = private unnamed_addr constant [7 x i8] c"noice!\00", align 1
@12 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@13 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@14 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@15 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@16 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@17 = private unnamed_addr constant [7 x i8] c"noice!\00", align 1
@18 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@20 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@21 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@22 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@23 = private unnamed_addr constant [2 x i8] c"c\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 3, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %int_stack1 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %2, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %int_stack3 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %3, %dreamObj** %int_stack3, align 8
  %int4 = load %dreamObj*, %dreamObj** %int_stack3, align 8
  %int_stack5 = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamInt(i32 5)
  store %dreamObj* %4, %dreamObj** %int_stack5, align 8
  %int6 = load %dreamObj*, %dreamObj** %int_stack5, align 8
  %int_stack7 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamInt(i32 7)
  store %dreamObj* %5, %dreamObj** %int_stack7, align 8
  %int8 = load %dreamObj*, %dreamObj** %int_stack7, align 8
  %func_stack = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %6, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %7 = bitcast i8* %value_temp to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(i32 3, %dreamObj* %int4, %dreamObj* %int6, %dreamObj* %int8)
  %func_stack9 = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %9, %dreamObj** %func_stack9, align 8
  %func10 = load %dreamObj*, %dreamObj** %func_stack9, align 8, !var_args !0
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %func10, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %10 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %11 = call %dreamObj* (...) %10(i32 3, %dreamObj* %int, %dreamObj* %int2, %dreamObj* %8)
  %12 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), %dreamObj* %11)
  store i32 4, i32* @line, align 4
  %13 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0))
  %14 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0))
  %int_stack13 = alloca %dreamObj*, align 8
  %15 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %15, %dreamObj** %int_stack13, align 8
  %int14 = load %dreamObj*, %dreamObj** %int_stack13, align 8
  %16 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0))
  %17 = call %dreamObj* @new_scope(%dreamObj* %16, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %17, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr15 = getelementptr %dreamObj, %dreamObj* %14, i32 0, i32 2
  %value_temp16 = load i8*, i8** %memberptr15, align 8
  %18 = bitcast i8* %value_temp16 to %dreamObj* (...)*
  %19 = call %dreamObj* (...) %18(%dreamObj* %new_scope, %dreamObj* %int14)
  %20 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @4, i32 0, i32 0))
  %int_stack17 = alloca %dreamObj*, align 8
  %21 = call %dreamObj* @dreamInt(i32 0)
  store %dreamObj* %21, %dreamObj** %int_stack17, align 8
  %int18 = load %dreamObj*, %dreamObj** %int_stack17, align 8
  %str_stack = alloca %dreamObj*, align 8
  %22 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0))
  store %dreamObj* %22, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %23 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0))
  %24 = call %dreamObj* @new_scope(%dreamObj* %23, i32 1)
  %scope_stack19 = alloca %dreamObj*, align 8
  store %dreamObj* %24, %dreamObj** %scope_stack19, align 8
  %new_scope20 = load %dreamObj*, %dreamObj** %scope_stack19, align 8
  %memberptr21 = getelementptr %dreamObj, %dreamObj* %20, i32 0, i32 2
  %value_temp22 = load i8*, i8** %memberptr21, align 8
  %25 = bitcast i8* %value_temp22 to %dreamObj* (...)*
  %26 = call %dreamObj* (...) %25(%dreamObj* %new_scope20, %dreamObj* %int18, %dreamObj* %str)
  store i32 5, i32* @line, align 4
  %str_stack23 = alloca %dreamObj*, align 8
  %27 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @7, i32 0, i32 0))
  store %dreamObj* %27, %dreamObj** %str_stack23, align 8
  %str24 = load %dreamObj*, %dreamObj** %str_stack23, align 8
  %28 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0))
  %29 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @9, i32 0, i32 0), i32 0)
  %30 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0))
  %31 = call %dreamObj* @new_scope(%dreamObj* %30, i32 1)
  %scope_stack25 = alloca %dreamObj*, align 8
  store %dreamObj* %31, %dreamObj** %scope_stack25, align 8
  %new_scope26 = load %dreamObj*, %dreamObj** %scope_stack25, align 8
  %memberptr27 = getelementptr %dreamObj, %dreamObj* %29, i32 0, i32 2
  %value_temp28 = load i8*, i8** %memberptr27, align 8
  %32 = bitcast i8* %value_temp28 to %dreamObj* (...)*
  %33 = call %dreamObj* (...) %32(%dreamObj* %new_scope26, %dreamObj* %str24)
  store i32 6, i32* @line, align 4
  %str_stack29 = alloca %dreamObj*, align 8
  %34 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0))
  store %dreamObj* %34, %dreamObj** %str_stack29, align 8
  %str30 = load %dreamObj*, %dreamObj** %str_stack29, align 8
  %35 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @12, i32 0, i32 0))
  %36 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @13, i32 0, i32 0))
  %int_stack31 = alloca %dreamObj*, align 8
  %37 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %37, %dreamObj** %int_stack31, align 8
  %int32 = load %dreamObj*, %dreamObj** %int_stack31, align 8
  %38 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0))
  %39 = call %dreamObj* @new_scope(%dreamObj* %38, i32 1)
  %scope_stack33 = alloca %dreamObj*, align 8
  store %dreamObj* %39, %dreamObj** %scope_stack33, align 8
  %new_scope34 = load %dreamObj*, %dreamObj** %scope_stack33, align 8
  %memberptr35 = getelementptr %dreamObj, %dreamObj* %36, i32 0, i32 2
  %value_temp36 = load i8*, i8** %memberptr35, align 8
  %40 = bitcast i8* %value_temp36 to %dreamObj* (...)*
  %41 = call %dreamObj* (...) %40(%dreamObj* %new_scope34, %dreamObj* %int32)
  %42 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @15, i32 0, i32 0), i32 0)
  %43 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0))
  %44 = call %dreamObj* @new_scope(%dreamObj* %43, i32 1)
  %scope_stack37 = alloca %dreamObj*, align 8
  store %dreamObj* %44, %dreamObj** %scope_stack37, align 8
  %new_scope38 = load %dreamObj*, %dreamObj** %scope_stack37, align 8
  %memberptr39 = getelementptr %dreamObj, %dreamObj* %42, i32 0, i32 2
  %value_temp40 = load i8*, i8** %memberptr39, align 8
  %45 = bitcast i8* %value_temp40 to %dreamObj* (...)*
  %46 = call %dreamObj* (...) %45(%dreamObj* %new_scope38, %dreamObj* %str30)
  store i32 7, i32* @line, align 4
  %str_stack41 = alloca %dreamObj*, align 8
  %47 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0))
  store %dreamObj* %47, %dreamObj** %str_stack41, align 8
  %str42 = load %dreamObj*, %dreamObj** %str_stack41, align 8
  %48 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @18, i32 0, i32 0))
  %49 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @19, i32 0, i32 0))
  %int_stack43 = alloca %dreamObj*, align 8
  %50 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %50, %dreamObj** %int_stack43, align 8
  %int44 = load %dreamObj*, %dreamObj** %int_stack43, align 8
  %51 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0))
  %52 = call %dreamObj* @new_scope(%dreamObj* %51, i32 1)
  %scope_stack45 = alloca %dreamObj*, align 8
  store %dreamObj* %52, %dreamObj** %scope_stack45, align 8
  %new_scope46 = load %dreamObj*, %dreamObj** %scope_stack45, align 8
  %memberptr47 = getelementptr %dreamObj, %dreamObj* %49, i32 0, i32 2
  %value_temp48 = load i8*, i8** %memberptr47, align 8
  %53 = bitcast i8* %value_temp48 to %dreamObj* (...)*
  %54 = call %dreamObj* (...) %53(%dreamObj* %new_scope46, %dreamObj* %int44)
  %55 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @21, i32 0, i32 0), i32 0)
  %56 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0))
  %57 = call %dreamObj* @new_scope(%dreamObj* %56, i32 1)
  %scope_stack49 = alloca %dreamObj*, align 8
  store %dreamObj* %57, %dreamObj** %scope_stack49, align 8
  %new_scope50 = load %dreamObj*, %dreamObj** %scope_stack49, align 8
  %memberptr51 = getelementptr %dreamObj, %dreamObj* %55, i32 0, i32 2
  %value_temp52 = load i8*, i8** %memberptr51, align 8
  %58 = bitcast i8* %value_temp52 to %dreamObj* (...)*
  %59 = call %dreamObj* (...) %58(%dreamObj* %new_scope50, %dreamObj* %str42)
  store i32 9, i32* @line, align 4
  %60 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @23, i32 0, i32 0))
  %func_stack53 = alloca %dreamObj*, align 8
  %61 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %61, %dreamObj** %func_stack53, align 8
  %func54 = load %dreamObj*, %dreamObj** %func_stack53, align 8, !var_args !0
  %memberptr55 = getelementptr %dreamObj, %dreamObj* %func54, i32 0, i32 2
  %value_temp56 = load i8*, i8** %memberptr55, align 8
  %62 = bitcast i8* %value_temp56 to %dreamObj* (...)*
  %63 = call %dreamObj* (...) %62(i32 1, %dreamObj* %60)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

declare void @gc(%dreamObj*)

declare void @dream_log(%dreamObj*)

declare %dreamObj* @dreamList(i32, ...)

declare %dreamObj* @count(%dreamObj*)

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

declare void @makeText(%dreamObj*)

declare %dreamObj* @add_c(%dreamObj*, %dreamObj*)

declare %dreamObj* @set_parent(%dreamObj*, %dreamObj*)

declare void @merge(%dreamObj*, %dreamObj*)

declare i8* @ctype(%dreamObj*)

declare void @display()

declare void @native_int(i32)

declare void @native_test(i32)

declare void @check(%dreamObj*, %dreamObj*)

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
