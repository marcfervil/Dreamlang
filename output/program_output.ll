; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@0 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@line = external global i32
@1 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"$self\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@7 = private unnamed_addr constant [8 x i8] c"my_item\00", align 1
@8 = private unnamed_addr constant [8 x i8] c"my_item\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@10 = private unnamed_addr constant [14 x i8] c"lambda_line_3\00", align 1
@11 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@12 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@13 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@14 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@15 = private unnamed_addr constant [9 x i8] c"contains\00", align 1
@16 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@17 = private unnamed_addr constant [5 x i8] c"heee\00", align 1
@18 = private unnamed_addr constant [15 x i8] c"lambda_line_10\00", align 1
@19 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@20 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@21 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@22 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@23 = private unnamed_addr constant [4 x i8] c"lie\00", align 1
@24 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@25 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@26 = private unnamed_addr constant [4 x i8] c"lie\00", align 1
@27 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@28 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@29 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@30 = private unnamed_addr constant [4 x i8] c"lie\00", align 1
@31 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
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
  %func_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %4, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %5 = bitcast i8* %value_temp to %dreamObj* (...)*
  %6 = call %dreamObj* (...) %5(i32 3, %dreamObj* %int, %dreamObj* %int2, %dreamObj* %int4)
  %7 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), %dreamObj* %6)
  store i32 3, i32* @line, align 4
  %func_stack5 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, ...)* @lambda_line_3 to i8*))
  store %dreamObj* %8, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8
  %9 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @10, i32 0, i32 0), %dreamObj* %func6)
  %10 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), %dreamObj* %obj)
  %str_stack = alloca %dreamObj*, align 8
  %11 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0))
  store %dreamObj* %11, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack7 = alloca %dreamObj*, align 8
  %12 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %12, %dreamObj** %func_stack7, align 8
  %func8 = load %dreamObj*, %dreamObj** %func_stack7, align 8, !var_args !0
  %memberptr9 = getelementptr %dreamObj, %dreamObj* %func8, i32 0, i32 2
  %value_temp10 = load i8*, i8** %memberptr9, align 8
  %13 = bitcast i8* %value_temp10 to %dreamObj* (...)*
  %14 = call %dreamObj* (...) %13(i32 1, %dreamObj* %str)
  %15 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @13, i32 0, i32 0), %dreamObj* %14)
  store i32 3, i32* @line, align 4
  %16 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @14, i32 0, i32 0), i32 1)
  %17 = call %dreamObj* @set_var(%dreamObj* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), %dreamObj* %func6)
  store i32 10, i32* @line, align 4
  %func_stack11 = alloca %dreamObj*, align 8
  %18 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, ...)* @lambda_line_10 to i8*))
  store %dreamObj* %18, %dreamObj** %func_stack11, align 8
  %func12 = load %dreamObj*, %dreamObj** %func_stack11, align 8
  %19 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @18, i32 0, i32 0), %dreamObj* %func12)
  %20 = call %dreamObj* @set_var(%dreamObj* %func12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), %dreamObj* %obj)
  %str_stack13 = alloca %dreamObj*, align 8
  %21 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @20, i32 0, i32 0))
  store %dreamObj* %21, %dreamObj** %str_stack13, align 8
  %str14 = load %dreamObj*, %dreamObj** %str_stack13, align 8
  %func_stack15 = alloca %dreamObj*, align 8
  %22 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %22, %dreamObj** %func_stack15, align 8
  %func16 = load %dreamObj*, %dreamObj** %func_stack15, align 8, !var_args !0
  %memberptr17 = getelementptr %dreamObj, %dreamObj* %func16, i32 0, i32 2
  %value_temp18 = load i8*, i8** %memberptr17, align 8
  %23 = bitcast i8* %value_temp18 to %dreamObj* (...)*
  %24 = call %dreamObj* (...) %23(i32 1, %dreamObj* %str14)
  %25 = call %dreamObj* @set_var(%dreamObj* %func12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @21, i32 0, i32 0), %dreamObj* %24)
  store i32 10, i32* @line, align 4
  %26 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @22, i32 0, i32 0), i32 1)
  %27 = call %dreamObj* @set_var(%dreamObj* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @23, i32 0, i32 0), %dreamObj* %func12)
  store i32 14, i32* @line, align 4
  %int_stack19 = alloca %dreamObj*, align 8
  %28 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %28, %dreamObj** %int_stack19, align 8
  %int20 = load %dreamObj*, %dreamObj** %int_stack19, align 8
  %29 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @24, i32 0, i32 0), i32 1)
  %30 = call %dreamObj* @contains_c(%dreamObj* %int20, %dreamObj* %29)
  %int_stack21 = alloca %dreamObj*, align 8
  %31 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %31, %dreamObj** %int_stack21, align 8
  %int22 = load %dreamObj*, %dreamObj** %int_stack21, align 8
  %32 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @25, i32 0, i32 0), i32 1)
  %33 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @26, i32 0, i32 0), i32 0)
  %34 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i32 1)
  %35 = call %dreamObj* @new_scope(%dreamObj* %34, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %35, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr23 = getelementptr %dreamObj, %dreamObj* %33, i32 0, i32 2
  %value_temp24 = load i8*, i8** %memberptr23, align 8
  %36 = bitcast i8* %value_temp24 to %dreamObj* (...)*
  %37 = call %dreamObj* (...) %36(%dreamObj* %new_scope, %dreamObj* %int22)
  %int_stack25 = alloca %dreamObj*, align 8
  %38 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %38, %dreamObj** %int_stack25, align 8
  %int26 = load %dreamObj*, %dreamObj** %int_stack25, align 8
  %39 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @28, i32 0, i32 0), i32 1)
  %40 = call %dreamObj* @contains_c(%dreamObj* %int26, %dreamObj* %39)
  %int_stack27 = alloca %dreamObj*, align 8
  %41 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %41, %dreamObj** %int_stack27, align 8
  %int28 = load %dreamObj*, %dreamObj** %int_stack27, align 8
  %42 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @29, i32 0, i32 0), i32 1)
  %43 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @30, i32 0, i32 0), i32 0)
  %44 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i32 1)
  %45 = call %dreamObj* @new_scope(%dreamObj* %44, i32 1)
  %scope_stack29 = alloca %dreamObj*, align 8
  store %dreamObj* %45, %dreamObj** %scope_stack29, align 8
  %new_scope30 = load %dreamObj*, %dreamObj** %scope_stack29, align 8
  %memberptr31 = getelementptr %dreamObj, %dreamObj* %43, i32 0, i32 2
  %value_temp32 = load i8*, i8** %memberptr31, align 8
  %46 = bitcast i8* %value_temp32 to %dreamObj* (...)*
  %47 = call %dreamObj* (...) %46(%dreamObj* %new_scope30, %dreamObj* %int28)
  %func_stack33 = alloca %dreamObj*, align 8
  %48 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %48, %dreamObj** %func_stack33, align 8
  %func34 = load %dreamObj*, %dreamObj** %func_stack33, align 8, !var_args !0
  %memberptr35 = getelementptr %dreamObj, %dreamObj* %func34, i32 0, i32 2
  %value_temp36 = load i8*, i8** %memberptr35, align 8
  %49 = bitcast i8* %value_temp36 to %dreamObj* (...)*
  %50 = call %dreamObj* (...) %49(i32 4, %dreamObj* %30, %dreamObj* %37, %dreamObj* %40, %dreamObj* %47)
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

define %dreamObj* @lambda_line_3(%dreamObj* %scope, %dreamObj* %item, ...) !arg_names !1 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %item, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 4, i32* @line, align 4
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0), i32 1)
  %3 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i32 1)
  %4 = call %dreamObj* @new_scope(%dreamObj* %3, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %4, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %5 = bitcast i8* %value_temp to %dreamObj* (...)*
  %6 = call %dreamObj* (...) %5(%dreamObj* %new_scope)
  %7 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @5, i32 0, i32 0), i32 1)
  %8 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i32 1)
  %9 = call %dreamObj* @new_scope(%dreamObj* %8, i32 1)
  %scope_stack1 = alloca %dreamObj*, align 8
  store %dreamObj* %9, %dreamObj** %scope_stack1, align 8
  %new_scope2 = load %dreamObj*, %dreamObj** %scope_stack1, align 8
  %10 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack3 = alloca %dreamObj*, align 8
  store %dreamObj* %10, %dreamObj** %scope_stack3, align 8
  %new_scope4 = load %dreamObj*, %dreamObj** %scope_stack3, align 8
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  br label %for_start

for_start:                                        ; preds = %ifcont, %EntryBlock
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %7, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %11 = bitcast i8* %value_temp6 to %dreamObj* (...)*
  %12 = call %dreamObj* (...) %11(%dreamObj* %new_scope2)
  %13 = call %dreamObj* @set_var(%dreamObj* %new_scope4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), %dreamObj* %12)
  %14 = icmp ne %dreamObj* %12, %null_dream
  br i1 %14, label %then, label %forcont

then:                                             ; preds = %for_start
  store i32 5, i32* @line, align 4
  %15 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @8, i32 0, i32 0), i32 1)
  %16 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @9, i32 0, i32 0), i32 1)
  %17 = call %dreamObj* @equals_c(%dreamObj* %15, %dreamObj* %16)
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %17, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %18 = bitcast i8* %value_temp8 to i32*
  %temp = load i32, i32* %18, align 4
  %19 = icmp eq i32 %temp, 1
  br i1 %19, label %then9, label %ifcont

then9:                                            ; preds = %then
  %20 = call %dreamObj* @new_scope(%dreamObj* %new_scope4, i32 1)
  %scope_stack10 = alloca %dreamObj*, align 8
  store %dreamObj* %20, %dreamObj** %scope_stack10, align 8
  %new_scope11 = load %dreamObj*, %dreamObj** %scope_stack10, align 8
  store i32 0, i32* @line, align 4
  store i32 5, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %21 = call %dreamObj* @dreamBool(i32 1)
  store %dreamObj* %21, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  ret %dreamObj* %int

ifcont:                                           ; preds = %then
  %null_dream12 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %22 = icmp ne %dreamObj* %12, %null_dream12
  br i1 %22, label %for_start, label %forcont

forcont:                                          ; preds = %ifcont, %for_start
  store i32 7, i32* @line, align 4
  %int_stack13 = alloca %dreamObj*, align 8
  %23 = call %dreamObj* @dreamBool(i32 0)
  store %dreamObj* %23, %dreamObj** %int_stack13, align 8
  %int14 = load %dreamObj*, %dreamObj** %int_stack13, align 8
  ret %dreamObj* %int14
}

define %dreamObj* @lambda_line_10(%dreamObj* %scope, %dreamObj* %hi, ...) !arg_names !2 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %hi, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @16, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 11, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @17, i32 0, i32 0))
  store %dreamObj* %1, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  ret %dreamObj* %str
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{!"item"}
!2 = !{!"hi"}
