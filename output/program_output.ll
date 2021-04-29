; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@0 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@line = external global i32
@1 = private unnamed_addr constant [2 x i8] c"x\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 5)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), %dreamObj* %int)
  store i32 2, i32* @line, align 4
  %int_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamBool(i32 1)
  store %dreamObj* %3, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %4 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0), i32 1)
  %int_stack3 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %5, %dreamObj** %int_stack3, align 8
  %int4 = load %dreamObj*, %dreamObj** %int_stack3, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %4, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %6 = bitcast i8* %value_temp to i32*
  %temp = load i32, i32* %6, align 4
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %int4, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %7 = bitcast i8* %value_temp6 to i32*
  %temp7 = load i32, i32* %7, align 4
  %8 = icmp sgt i32 %temp, %temp7
  %bool_stack = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamBool(i1 %8)
  store %dreamObj* %9, %dreamObj** %bool_stack, align 8
  %bool = load %dreamObj*, %dreamObj** %bool_stack, align 8
  %memberptr8 = getelementptr %dreamObj, %dreamObj* %int2, i32 0, i32 2
  %value_temp9 = load i8*, i8** %memberptr8, align 8
  %10 = bitcast i8* %value_temp9 to i32*
  %temp10 = load i32, i32* %10, align 4
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %bool, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %11 = bitcast i8* %value_temp12 to i32*
  %temp13 = load i32, i32* %11, align 4
  %and_result = alloca i32, align 4
  store i32 0, i32* %and_result, align 4
  %12 = icmp eq i32 %temp10, 1
  store i1 %12, i32* %and_result, align 1
  br i1 %12, label %and_if, label %and_then
  br label %and_if

and_if:                                           ; preds = %EntryBlock, %EntryBlock
  %13 = icmp eq i32 %temp13, 1
  store i1 %13, i32* %and_result, align 1
  br label %and_then

and_then:                                         ; preds = %and_if, %EntryBlock
  %and_result14 = load i32, i32* %and_result, align 4
  %bool_stack15 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamBool(i32 %and_result14)
  store %dreamObj* %14, %dreamObj** %bool_stack15, align 8
  %bool16 = load %dreamObj*, %dreamObj** %bool_stack15, align 8
  %int_stack17 = alloca %dreamObj*, align 8
  %15 = call %dreamObj* @dreamBool(i32 1)
  store %dreamObj* %15, %dreamObj** %int_stack17, align 8
  %int18 = load %dreamObj*, %dreamObj** %int_stack17, align 8
  %memberptr19 = getelementptr %dreamObj, %dreamObj* %bool16, i32 0, i32 2
  %value_temp20 = load i8*, i8** %memberptr19, align 8
  %16 = bitcast i8* %value_temp20 to i32*
  %temp21 = load i32, i32* %16, align 4
  %memberptr22 = getelementptr %dreamObj, %dreamObj* %int18, i32 0, i32 2
  %value_temp23 = load i8*, i8** %memberptr22, align 8
  %17 = bitcast i8* %value_temp23 to i32*
  %temp24 = load i32, i32* %17, align 4
  %and_result25 = alloca i32, align 4
  store i32 0, i32* %and_result25, align 4
  %18 = icmp eq i32 %temp21, 1
  store i1 %18, i32* %and_result25, align 1
  br i1 %18, label %and_if26, label %and_then27
  br label %and_if26

and_if26:                                         ; preds = %and_then, %and_then
  %19 = icmp eq i32 %temp24, 1
  store i1 %19, i32* %and_result25, align 1
  br label %and_then27

and_then27:                                       ; preds = %and_if26, %and_then
  %and_result28 = load i32, i32* %and_result25, align 4
  %bool_stack29 = alloca %dreamObj*, align 8
  %20 = call %dreamObj* @dreamBool(i32 %and_result28)
  store %dreamObj* %20, %dreamObj** %bool_stack29, align 8
  %bool30 = load %dreamObj*, %dreamObj** %bool_stack29, align 8
  %func_stack = alloca %dreamObj*, align 8
  %21 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %21, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr31 = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp32 = load i8*, i8** %memberptr31, align 8
  %22 = bitcast i8* %value_temp32 to %dreamObj* (...)*
  %23 = call %dreamObj* (...) %22(i32 1, %dreamObj* %bool30)
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

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
