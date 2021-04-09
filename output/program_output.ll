; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"not 1\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@5 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@7 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@8 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@10 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@11 = private unnamed_addr constant [3 x i8] c"dd\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 4, i32* @line, align 4
  %func_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*)* @c to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0), %dreamObj* %func)
  %3 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), %dreamObj* %obj)
  store i32 12, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @6, i32 0, i32 0))
  store %dreamObj* %4, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %5 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @7, i32 0, i32 0), %dreamObj* %str)
  store i32 13, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %6, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %int_stack1 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %7, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %8 = call %dreamObj* @equals_c(%dreamObj* %int, %dreamObj* %int2)
  %memberptr = getelementptr %dreamObj, %dreamObj* %8, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %9 = bitcast i8* %value_temp to i32*
  %temp = load i32, i32* %9, align 4
  %10 = icmp eq i32 %temp, 1
  br i1 %10, label %then, label %ifcont

then:                                             ; preds = %EntryBlock
  %11 = call %dreamObj* @new_scope(%dreamObj* %obj, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %11, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 14, i32* @line, align 4
  %int_stack3 = alloca %dreamObj*, align 8
  %12 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %12, %dreamObj** %int_stack3, align 8
  %int4 = load %dreamObj*, %dreamObj** %int_stack3, align 8
  %13 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0))
  %14 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0))
  %15 = call %dreamObj* @new_scope(%dreamObj* %14, i32 1)
  %scope_stack5 = alloca %dreamObj*, align 8
  store %dreamObj* %15, %dreamObj** %scope_stack5, align 8
  %new_scope6 = load %dreamObj*, %dreamObj** %scope_stack5, align 8
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %13, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %16 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %17 = call %dreamObj* (...) %16(%dreamObj* %new_scope6, %dreamObj* %int4)
  %18 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @10, i32 0, i32 0), %dreamObj* %17)
  br label %ifcont

ifcont:                                           ; preds = %then, %EntryBlock
  store i32 18, i32* @line, align 4
  %19 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @11, i32 0, i32 0))
  %func_stack9 = alloca %dreamObj*, align 8
  %20 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %20, %dreamObj** %func_stack9, align 8
  %func10 = load %dreamObj*, %dreamObj** %func_stack9, align 8, !var_args !0
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %func10, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %21 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %22 = call %dreamObj* (...) %21(i32 1, %dreamObj* %19)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

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

define %dreamObj* @c(%dreamObj* %scope, %dreamObj* %g) !arg_names !1 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %g, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 5, i32* @line, align 4
  %1 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0))
  %int_stack = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %2, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %3 = call %dreamObj* @equals_c(%dreamObj* %1, %dreamObj* %int)
  %memberptr = getelementptr %dreamObj, %dreamObj* %3, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to i32*
  %temp = load i32, i32* %4, align 4
  %5 = icmp eq i32 %temp, 1
  br i1 %5, label %then, label %ifcont

then:                                             ; preds = %EntryBlock
  %6 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %6, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 6, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0))
  store %dreamObj* %7, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  ret %dreamObj* %str

ifcont:                                           ; preds = %EntryBlock
  store i32 9, i32* @line, align 4
  %str_stack1 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  store %dreamObj* %8, %dreamObj** %str_stack1, align 8
  %str2 = load %dreamObj*, %dreamObj** %str_stack1, align 8
  ret %dreamObj* %str2
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{!"g"}
