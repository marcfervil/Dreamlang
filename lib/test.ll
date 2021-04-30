/Users/marcfervil/Documents/Programming/Dreamlang/venv/bin/python /Users/marcfervil/Documents/Programming/Dreamlang/main.py
We just constructed this LLVM module:

; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@5 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@6 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@7 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@8 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@9 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@10 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@11 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@12 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@13 = private unnamed_addr constant [2 x i8] c"i\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 2, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 0)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), %dreamObj* %int)
  store i32 3, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0))
  store %dreamObj* %3, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %str_stack1 = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0))
  store %dreamObj* %4, %dreamObj** %str_stack1, align 8
  %str2 = load %dreamObj*, %dreamObj** %str_stack1, align 8
  %str_stack3 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i32 0, i32 0))
  store %dreamObj* %5, %dreamObj** %str_stack3, align 8
  %str4 = load %dreamObj*, %dreamObj** %str_stack3, align 8
  %func_stack = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %6, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %7 = bitcast i8* %value_temp to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(i32 3, %dreamObj* %str, %dreamObj* %str2, %dreamObj* %str4)
  %9 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), i32 1)
  %10 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i32 1)
  %11 = call %dreamObj* @new_scope(%dreamObj* %10, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %11, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %9, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %12 = bitcast i8* %value_temp6 to %dreamObj* (...)*
  %13 = call %dreamObj* (...) %12(%dreamObj* %new_scope)
  %14 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i32 1)
  %15 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i32 1)
  %16 = call %dreamObj* @new_scope(%dreamObj* %15, i32 1)
  %scope_stack7 = alloca %dreamObj*, align 8
  store %dreamObj* %16, %dreamObj** %scope_stack7, align 8
  %new_scope8 = load %dreamObj*, %dreamObj** %scope_stack7, align 8
  %17 = call %dreamObj* @new_scope(%dreamObj* %obj, i32 1)
  %scope_stack9 = alloca %dreamObj*, align 8
  store %dreamObj* %17, %dreamObj** %scope_stack9, align 8
  %new_scope10 = load %dreamObj*, %dreamObj** %scope_stack9, align 8
  %null_dream11 = load %dreamObj*, %dreamObj** @nullDream, align 8
  br label %for_start

for_start:                                        ; preds = %ifcont, %then26, %EntryBlock
  %memberptr12 = getelementptr %dreamObj, %dreamObj* %14, i32 0, i32 2
  %value_temp13 = load i8*, i8** %memberptr12, align 8
  %18 = bitcast i8* %value_temp13 to %dreamObj* (...)*
  %19 = call %dreamObj* (...) %18(%dreamObj* %new_scope8)
  %20 = call %dreamObj* @set_var(%dreamObj* %new_scope10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0), %dreamObj* %19)
  %21 = icmp ne %dreamObj* %19, %null_dream11
  br i1 %21, label %then, label %forcont

then:                                             ; preds = %for_start
  store i32 4, i32* @line, align 4
  %22 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @9, i32 0, i32 0), i32 1)
  %int_stack14 = alloca %dreamObj*, align 8
  %23 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %23, %dreamObj** %int_stack14, align 8
  %int15 = load %dreamObj*, %dreamObj** %int_stack14, align 8
  %24 = call %dreamObj* @add_c(%dreamObj* %22, %dreamObj* %int15)
  %25 = call %dreamObj* @set_var(%dreamObj* %new_scope10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @10, i32 0, i32 0), %dreamObj* %24)
  store i32 5, i32* @line, align 4
  %26 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i32 0, i32 0), i32 1)
  %int_stack16 = alloca %dreamObj*, align 8
  %27 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %27, %dreamObj** %int_stack16, align 8
  %int17 = load %dreamObj*, %dreamObj** %int_stack16, align 8
  %memberptr18 = getelementptr %dreamObj, %dreamObj* %26, i32 0, i32 2
  %value_temp19 = load i8*, i8** %memberptr18, align 8
  %28 = bitcast i8* %value_temp19 to i32*
  %temp = load i32, i32* %28, align 4
  %memberptr20 = getelementptr %dreamObj, %dreamObj* %int17, i32 0, i32 2
  %value_temp21 = load i8*, i8** %memberptr20, align 8
  %29 = bitcast i8* %value_temp21 to i32*
  %temp22 = load i32, i32* %29, align 4
  %30 = icmp slt i32 %temp, %temp22
  %bool_stack = alloca %dreamObj*, align 8
  %31 = call %dreamObj* @dreamBool(i1 %30)
  store %dreamObj* %31, %dreamObj** %bool_stack, align 8
  %bool = load %dreamObj*, %dreamObj** %bool_stack, align 8
  %memberptr23 = getelementptr %dreamObj, %dreamObj* %bool, i32 0, i32 2
  %value_temp24 = load i8*, i8** %memberptr23, align 8
  %32 = bitcast i8* %value_temp24 to i32*
  %temp25 = load i32, i32* %32, align 4
  %33 = icmp eq i32 %temp25, 1
  br i1 %33, label %then26, label %ifcont

then26:                                           ; preds = %then
  %34 = call %dreamObj* @new_scope(%dreamObj* %new_scope10, i32 1)
  %scope_stack27 = alloca %dreamObj*, align 8
  store %dreamObj* %34, %dreamObj** %scope_stack27, align 8
  %new_scope28 = load %dreamObj*, %dreamObj** %scope_stack27, align 8
  store i32 6, i32* @line, align 4
  br label %for_start
  %int_stack29 = alloca %dreamObj*, align 8
  %35 = call %dreamObj* @dreamInt(i32 69)
  store %dreamObj* %35, %dreamObj** %int_stack29, align 8
  %int30 = load %dreamObj*, %dreamObj** %int_stack29, align 8
  %36 = call %dreamObj* @set_var(%dreamObj* %new_scope28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @12, i32 0, i32 0), %dreamObj* %int30)
  br label %ifcont

ifcont:                                           ; preds = %then26, %then
  store i32 8, i32* @line, align 4
  %37 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @13, i32 0, i32 0), i32 1)
  %func_stack31 = alloca %dreamObj*, align 8
  %38 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %38, %dreamObj** %func_stack31, align 8
  %func32 = load %dreamObj*, %dreamObj** %func_stack31, align 8, !var_args !0
  %memberptr33 = getelementptr %dreamObj, %dreamObj* %func32, i32 0, i32 2
  %value_temp34 = load i8*, i8** %memberptr33, align 8
  %39 = bitcast i8* %value_temp34 to %dreamObj* (...)*
  %40 = call %dreamObj* (...) %39(i32 1, %dreamObj* %37)
  %null_dream35 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %41 = icmp ne %dreamObj* %19, %null_dream35
  br i1 %41, label %for_start, label %forcont

forcont:                                          ; preds = %ifcont, %for_start
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

!0 = !{!"1"}


[Dream]: b
[Dream]: c

Result: 0

Process finished with exit code 0
