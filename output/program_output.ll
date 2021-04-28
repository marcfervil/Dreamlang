; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@1 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@2 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"hehe\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@5 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@6 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@7 = private unnamed_addr constant [4 x i8] c"zoo\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"hehe\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"args\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 4, i32* @line, align 4
  %func_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, ...)* @hehe to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0), %dreamObj* %func)
  %3 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), %dreamObj* %obj)
  %str_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @5, i32 0, i32 0))
  store %dreamObj* %4, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack1 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %5, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %6 = bitcast i8* %value_temp to %dreamObj* (...)*
  %7 = call %dreamObj* (...) %6(i32 1, %dreamObj* %str)
  %8 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), %dreamObj* %7)
  store i32 10, i32* @line, align 4
  %str_stack3 = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @7, i32 0, i32 0))
  store %dreamObj* %9, %dreamObj** %str_stack3, align 8
  %str4 = load %dreamObj*, %dreamObj** %str_stack3, align 8
  %func_stack5 = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %10, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !0
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %11 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %12 = call %dreamObj* (...) %11(i32 1, %dreamObj* %str4)
  %13 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i32 1)
  %14 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i32 1)
  %15 = call %dreamObj* @new_scope(%dreamObj* %14, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %15, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %16 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0), i32 1)
  %func_stack9 = alloca %dreamObj*, align 8
  %17 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*, %dreamObj*)* @apply_vargs to i8*))
  store %dreamObj* %17, %dreamObj** %func_stack9, align 8
  %func10 = load %dreamObj*, %dreamObj** %func_stack9, align 8, !var_args !1
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %func10, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %18 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %19 = call %dreamObj* (...) %18(%dreamObj* %new_scope, %dreamObj* %16, %dreamObj* %12)
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %13, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %20 = bitcast i8* %value_temp14 to %dreamObj* (...)*
  %21 = call %dreamObj* (...) %20(%dreamObj* %new_scope, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
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

define %dreamObj* @hehe(%dreamObj* %scope, %dreamObj* %hi, ...) !arg_names !2 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %hi, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @0, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 5, i32* @line, align 4
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1, i32 0, i32 0), i32 1)
  %func_stack1 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %2, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(i32 1, %dreamObj* %1)
  %str_stack = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2, i32 0, i32 0))
  store %dreamObj* %5, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  ret %dreamObj* %str
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{!"0"}
!2 = !{!"hi"}
