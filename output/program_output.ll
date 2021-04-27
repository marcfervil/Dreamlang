; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 -100)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %int_stack1 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamInt(i32 -1)
  store %dreamObj* %2, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %int_stack3 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %3, %dreamObj** %int_stack3, align 8
  %int4 = load %dreamObj*, %dreamObj** %int_stack3, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %int2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to i32*
  %temp = load i32, i32* %4, align 4
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %int4, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %5 = bitcast i8* %value_temp6 to i32*
  %temp7 = load i32, i32* %5, align 4
  %6 = mul i32 %temp, %temp7
  %int_stack8 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamInt(i32 %6)
  store %dreamObj* %7, %dreamObj** %int_stack8, align 8
  %int9 = load %dreamObj*, %dreamObj** %int_stack8, align 8
  %int_stack10 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamInt(i32 10)
  store %dreamObj* %8, %dreamObj** %int_stack10, align 8
  %int11 = load %dreamObj*, %dreamObj** %int_stack10, align 8
  %memberptr12 = getelementptr %dreamObj, %dreamObj* %int9, i32 0, i32 2
  %value_temp13 = load i8*, i8** %memberptr12, align 8
  %9 = bitcast i8* %value_temp13 to i32*
  %temp14 = load i32, i32* %9, align 4
  %memberptr15 = getelementptr %dreamObj, %dreamObj* %int11, i32 0, i32 2
  %value_temp16 = load i8*, i8** %memberptr15, align 8
  %10 = bitcast i8* %value_temp16 to i32*
  %temp17 = load i32, i32* %10, align 4
  %11 = sub i32 %temp14, %temp17
  %int_stack18 = alloca %dreamObj*, align 8
  %12 = call %dreamObj* @dreamInt(i32 %11)
  store %dreamObj* %12, %dreamObj** %int_stack18, align 8
  %int19 = load %dreamObj*, %dreamObj** %int_stack18, align 8
  %memberptr20 = getelementptr %dreamObj, %dreamObj* %int, i32 0, i32 2
  %value_temp21 = load i8*, i8** %memberptr20, align 8
  %13 = bitcast i8* %value_temp21 to i32*
  %temp22 = load i32, i32* %13, align 4
  %memberptr23 = getelementptr %dreamObj, %dreamObj* %int19, i32 0, i32 2
  %value_temp24 = load i8*, i8** %memberptr23, align 8
  %14 = bitcast i8* %value_temp24 to i32*
  %temp25 = load i32, i32* %14, align 4
  %15 = icmp sgt i32 %temp22, %temp25
  %bool_stack = alloca %dreamObj*, align 8
  %16 = call %dreamObj* @dreamBool(i1 %15)
  store %dreamObj* %16, %dreamObj** %bool_stack, align 8
  %bool = load %dreamObj*, %dreamObj** %bool_stack, align 8
  %int_stack26 = alloca %dreamObj*, align 8
  %17 = call %dreamObj* @dreamInt(i32 -1)
  store %dreamObj* %17, %dreamObj** %int_stack26, align 8
  %int27 = load %dreamObj*, %dreamObj** %int_stack26, align 8
  %int_stack28 = alloca %dreamObj*, align 8
  %18 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %18, %dreamObj** %int_stack28, align 8
  %int29 = load %dreamObj*, %dreamObj** %int_stack28, align 8
  %memberptr30 = getelementptr %dreamObj, %dreamObj* %int27, i32 0, i32 2
  %value_temp31 = load i8*, i8** %memberptr30, align 8
  %19 = bitcast i8* %value_temp31 to i32*
  %temp32 = load i32, i32* %19, align 4
  %memberptr33 = getelementptr %dreamObj, %dreamObj* %int29, i32 0, i32 2
  %value_temp34 = load i8*, i8** %memberptr33, align 8
  %20 = bitcast i8* %value_temp34 to i32*
  %temp35 = load i32, i32* %20, align 4
  %21 = mul i32 %temp32, %temp35
  %int_stack36 = alloca %dreamObj*, align 8
  %22 = call %dreamObj* @dreamInt(i32 %21)
  store %dreamObj* %22, %dreamObj** %int_stack36, align 8
  %int37 = load %dreamObj*, %dreamObj** %int_stack36, align 8
  %int_stack38 = alloca %dreamObj*, align 8
  %23 = call %dreamObj* @dreamInt(i32 10)
  store %dreamObj* %23, %dreamObj** %int_stack38, align 8
  %int39 = load %dreamObj*, %dreamObj** %int_stack38, align 8
  %memberptr40 = getelementptr %dreamObj, %dreamObj* %int37, i32 0, i32 2
  %value_temp41 = load i8*, i8** %memberptr40, align 8
  %24 = bitcast i8* %value_temp41 to i32*
  %temp42 = load i32, i32* %24, align 4
  %memberptr43 = getelementptr %dreamObj, %dreamObj* %int39, i32 0, i32 2
  %value_temp44 = load i8*, i8** %memberptr43, align 8
  %25 = bitcast i8* %value_temp44 to i32*
  %temp45 = load i32, i32* %25, align 4
  %26 = sub i32 %temp42, %temp45
  %int_stack46 = alloca %dreamObj*, align 8
  %27 = call %dreamObj* @dreamInt(i32 %26)
  store %dreamObj* %27, %dreamObj** %int_stack46, align 8
  %int47 = load %dreamObj*, %dreamObj** %int_stack46, align 8
  %func_stack = alloca %dreamObj*, align 8
  %28 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %28, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr48 = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp49 = load i8*, i8** %memberptr48, align 8
  %29 = bitcast i8* %value_temp49 to %dreamObj* (...)*
  %30 = call %dreamObj* (...) %29(i32 2, %dreamObj* %bool, %dreamObj* %int47)
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
