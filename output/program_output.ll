; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@line = external global i32
@0 = private unnamed_addr constant [5 x i8] c"hey!\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"look!\00", align 1
@2 = private unnamed_addr constant [8 x i8] c"listen!\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@5 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@8 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@10 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@11 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@12 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 4, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0))
  store %dreamObj* %1, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %str_stack1 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  store %dreamObj* %2, %dreamObj** %str_stack1, align 8
  %str2 = load %dreamObj*, %dreamObj** %str_stack1, align 8
  %str_stack3 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0))
  store %dreamObj* %3, %dreamObj** %str_stack3, align 8
  %str4 = load %dreamObj*, %dreamObj** %str_stack3, align 8
  %func_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %4, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %5 = bitcast i8* %value_temp to %dreamObj* (...)*
  %6 = call %dreamObj* (...) %5(i32 3, %dreamObj* %str, %dreamObj* %str2, %dreamObj* %str4)
  %7 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i32 0, i32 0), %dreamObj* %6)
  store i32 5, i32* @line, align 4
  %8 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0))
  %9 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @5, i32 0, i32 0))
  %int_stack = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamInt(i32 0)
  store %dreamObj* %10, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %11 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0))
  %12 = call %dreamObj* @new_scope(%dreamObj* %11, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %12, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %9, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %13 = bitcast i8* %value_temp6 to %dreamObj* (...)*
  %14 = call %dreamObj* (...) %13(%dreamObj* %new_scope, %dreamObj* %int)
  %15 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0))
  %16 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @8, i32 0, i32 0))
  %int_stack7 = alloca %dreamObj*, align 8
  %17 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %17, %dreamObj** %int_stack7, align 8
  %int8 = load %dreamObj*, %dreamObj** %int_stack7, align 8
  %18 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0))
  %19 = call %dreamObj* @new_scope(%dreamObj* %18, i32 1)
  %scope_stack9 = alloca %dreamObj*, align 8
  store %dreamObj* %19, %dreamObj** %scope_stack9, align 8
  %new_scope10 = load %dreamObj*, %dreamObj** %scope_stack9, align 8
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %16, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %20 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %21 = call %dreamObj* (...) %20(%dreamObj* %new_scope10, %dreamObj* %int8)
  %22 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @10, i32 0, i32 0))
  %23 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @11, i32 0, i32 0))
  %int_stack13 = alloca %dreamObj*, align 8
  %24 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %24, %dreamObj** %int_stack13, align 8
  %int14 = load %dreamObj*, %dreamObj** %int_stack13, align 8
  %25 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0))
  %26 = call %dreamObj* @new_scope(%dreamObj* %25, i32 1)
  %scope_stack15 = alloca %dreamObj*, align 8
  store %dreamObj* %26, %dreamObj** %scope_stack15, align 8
  %new_scope16 = load %dreamObj*, %dreamObj** %scope_stack15, align 8
  %memberptr17 = getelementptr %dreamObj, %dreamObj* %23, i32 0, i32 2
  %value_temp18 = load i8*, i8** %memberptr17, align 8
  %27 = bitcast i8* %value_temp18 to %dreamObj* (...)*
  %28 = call %dreamObj* (...) %27(%dreamObj* %new_scope16, %dreamObj* %int14)
  %func_stack19 = alloca %dreamObj*, align 8
  %29 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %29, %dreamObj** %func_stack19, align 8
  %func20 = load %dreamObj*, %dreamObj** %func_stack19, align 8, !var_args !0
  %memberptr21 = getelementptr %dreamObj, %dreamObj* %func20, i32 0, i32 2
  %value_temp22 = load i8*, i8** %memberptr21, align 8
  %30 = bitcast i8* %value_temp22 to %dreamObj* (...)*
  %31 = call %dreamObj* (...) %30(i32 3, %dreamObj* %14, %dreamObj* %21, %dreamObj* %28)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

declare void @dream_log(%dreamObj*)

declare %dreamObj* @dreamList(i32, ...)

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
