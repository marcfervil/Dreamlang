; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 2, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamBool(i32 1)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %int_stack1 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamBool(i32 1)
  store %dreamObj* %2, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %int, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to i32*
  %temp = load i32, i32* %3, align 4
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %int2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %4 = bitcast i8* %value_temp4 to i32*
  %temp5 = load i32, i32* %4, align 4
  %and_result = alloca i32, align 4
  store i32 0, i32* %and_result, align 4
  %5 = icmp eq i32 %temp, 1
  store i1 %5, i32* %and_result, align 1
  br i1 %5, label %and_if, label %and_then
  br label %and_if

and_if:                                           ; preds = %EntryBlock, %EntryBlock
  %6 = icmp eq i32 %temp5, 1
  store i1 %6, i32* %and_result, align 1
  br label %and_then

and_then:                                         ; preds = %and_if, %EntryBlock
  %and_result6 = load i32, i32* %and_result, align 4
  %bool_stack = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamBool(i32 %and_result6)
  store %dreamObj* %7, %dreamObj** %bool_stack, align 8
  %bool = load %dreamObj*, %dreamObj** %bool_stack, align 8
  %int_stack7 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamBool(i32 1)
  store %dreamObj* %8, %dreamObj** %int_stack7, align 8
  %int8 = load %dreamObj*, %dreamObj** %int_stack7, align 8
  %memberptr9 = getelementptr %dreamObj, %dreamObj* %bool, i32 0, i32 2
  %value_temp10 = load i8*, i8** %memberptr9, align 8
  %9 = bitcast i8* %value_temp10 to i32*
  %temp11 = load i32, i32* %9, align 4
  %memberptr12 = getelementptr %dreamObj, %dreamObj* %int8, i32 0, i32 2
  %value_temp13 = load i8*, i8** %memberptr12, align 8
  %10 = bitcast i8* %value_temp13 to i32*
  %temp14 = load i32, i32* %10, align 4
  %and_result15 = alloca i32, align 4
  store i32 0, i32* %and_result15, align 4
  %11 = icmp eq i32 %temp11, 1
  store i1 %11, i32* %and_result15, align 1
  br i1 %11, label %and_if16, label %and_then17
  br label %and_if16

and_if16:                                         ; preds = %and_then, %and_then
  %12 = icmp eq i32 %temp14, 1
  store i1 %12, i32* %and_result15, align 1
  br label %and_then17

and_then17:                                       ; preds = %and_if16, %and_then
  %and_result18 = load i32, i32* %and_result15, align 4
  %bool_stack19 = alloca %dreamObj*, align 8
  %13 = call %dreamObj* @dreamBool(i32 %and_result18)
  store %dreamObj* %13, %dreamObj** %bool_stack19, align 8
  %bool20 = load %dreamObj*, %dreamObj** %bool_stack19, align 8
  %func_stack = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %14, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr21 = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp22 = load i8*, i8** %memberptr21, align 8
  %15 = bitcast i8* %value_temp22 to %dreamObj* (...)*
  %16 = call %dreamObj* (...) %15(i32 1, %dreamObj* %bool20)
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
