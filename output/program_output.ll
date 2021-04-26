; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@0 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@line = external global i32
@2 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@4 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@6 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@7 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@11 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@12 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@13 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@14 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@15 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@16 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@17 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@18 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@19 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@20 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@21 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@22 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@23 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@24 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@25 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@26 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@27 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@29 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@30 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@31 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@32 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@33 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@34 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@35 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@36 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@37 = private unnamed_addr constant [28 x i8] c"Wow look at all these words\00", align 1
@38 = private unnamed_addr constant [2 x i8] c" \00", align 1
@39 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@40 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@41 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@42 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@43 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@44 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@45 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@46 = private unnamed_addr constant [5 x i8] c"word\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %func_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, %dreamObj*)* @split to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @35, i32 0, i32 0), %dreamObj* %func)
  %3 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @36, i32 0, i32 0), %dreamObj* %obj)
  store i32 16, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @37, i32 0, i32 0))
  store %dreamObj* %4, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %str_stack1 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @38, i32 0, i32 0))
  store %dreamObj* %5, %dreamObj** %str_stack1, align 8
  %str2 = load %dreamObj*, %dreamObj** %str_stack1, align 8
  %6 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @39, i32 0, i32 0), i32 1)
  %7 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @40, i32 0, i32 0), i32 1)
  %8 = call %dreamObj* @new_scope(%dreamObj* %7, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %8, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %6, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %9 = bitcast i8* %value_temp to %dreamObj* (...)*
  %10 = call %dreamObj* (...) %9(%dreamObj* %new_scope, %dreamObj* %str, %dreamObj* %str2)
  %11 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @41, i32 0, i32 0), i32 1)
  %12 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @42, i32 0, i32 0), i32 1)
  %13 = call %dreamObj* @new_scope(%dreamObj* %12, i32 1)
  %scope_stack3 = alloca %dreamObj*, align 8
  store %dreamObj* %13, %dreamObj** %scope_stack3, align 8
  %new_scope4 = load %dreamObj*, %dreamObj** %scope_stack3, align 8
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %11, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %14 = bitcast i8* %value_temp6 to %dreamObj* (...)*
  %15 = call %dreamObj* (...) %14(%dreamObj* %new_scope4)
  %16 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @43, i32 0, i32 0), i32 1)
  %17 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0), i32 1)
  %18 = call %dreamObj* @new_scope(%dreamObj* %17, i32 1)
  %scope_stack7 = alloca %dreamObj*, align 8
  store %dreamObj* %18, %dreamObj** %scope_stack7, align 8
  %new_scope8 = load %dreamObj*, %dreamObj** %scope_stack7, align 8
  %19 = call %dreamObj* @new_scope(%dreamObj* %obj, i32 1)
  %scope_stack9 = alloca %dreamObj*, align 8
  store %dreamObj* %19, %dreamObj** %scope_stack9, align 8
  %new_scope10 = load %dreamObj*, %dreamObj** %scope_stack9, align 8
  %null_dream11 = load %dreamObj*, %dreamObj** @nullDream, align 8
  br label %for_start

for_start:                                        ; preds = %then, %EntryBlock
  %memberptr12 = getelementptr %dreamObj, %dreamObj* %16, i32 0, i32 2
  %value_temp13 = load i8*, i8** %memberptr12, align 8
  %20 = bitcast i8* %value_temp13 to %dreamObj* (...)*
  %21 = call %dreamObj* (...) %20(%dreamObj* %new_scope8)
  %22 = call %dreamObj* @set_var(%dreamObj* %new_scope10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @45, i32 0, i32 0), %dreamObj* %21)
  %23 = icmp ne %dreamObj* %21, %null_dream11
  br i1 %23, label %then, label %forcont

then:                                             ; preds = %for_start
  store i32 17, i32* @line, align 4
  %24 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @46, i32 0, i32 0), i32 1)
  %func_stack14 = alloca %dreamObj*, align 8
  %25 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %25, %dreamObj** %func_stack14, align 8
  %func15 = load %dreamObj*, %dreamObj** %func_stack14, align 8, !var_args !0
  %memberptr16 = getelementptr %dreamObj, %dreamObj* %func15, i32 0, i32 2
  %value_temp17 = load i8*, i8** %memberptr16, align 8
  %26 = bitcast i8* %value_temp17 to %dreamObj* (...)*
  %27 = call %dreamObj* (...) %26(i32 1, %dreamObj* %24)
  %null_dream18 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %28 = icmp ne %dreamObj* %21, %null_dream18
  br i1 %28, label %for_start, label %forcont

forcont:                                          ; preds = %then, %for_start
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

define %dreamObj* @split(%dreamObj* %scope, %dreamObj* %string, %dreamObj* %char) !arg_names !1 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %string, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @0, i32 0, i32 0), %dreamObj* %varName)
  %alloctmp1 = alloca %dreamObj*, align 8
  store %dreamObj* %char, %dreamObj** %alloctmp1, align 8
  %varName2 = load %dreamObj*, %dreamObj** %alloctmp1, align 8
  %1 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1, i32 0, i32 0), %dreamObj* %varName2)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 2, i32* @line, align 4
  %func_stack3 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %2, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func4, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(i32 0)
  %5 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2, i32 0, i32 0), %dreamObj* %4)
  store i32 3, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3, i32 0, i32 0))
  store %dreamObj* %6, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %7 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), %dreamObj* %str)
  store i32 4, i32* @line, align 4
  %8 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i32 1)
  %9 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @6, i32 0, i32 0), i32 0)
  %10 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i32 1)
  %11 = call %dreamObj* @new_scope(%dreamObj* %10, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %11, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %9, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %12 = bitcast i8* %value_temp6 to %dreamObj* (...)*
  %13 = call %dreamObj* (...) %12(%dreamObj* %new_scope)
  %func_stack7 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @count to i8*))
  store %dreamObj* %14, %dreamObj** %func_stack7, align 8
  %func8 = load %dreamObj*, %dreamObj** %func_stack7, align 8, !var_args !2
  %memberptr9 = getelementptr %dreamObj, %dreamObj* %func8, i32 0, i32 2
  %value_temp10 = load i8*, i8** %memberptr9, align 8
  %15 = bitcast i8* %value_temp10 to %dreamObj* (...)*
  %16 = call %dreamObj* (...) %15(%dreamObj* %13)
  %17 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i32 1)
  %18 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i32 1)
  %19 = call %dreamObj* @new_scope(%dreamObj* %18, i32 1)
  %scope_stack11 = alloca %dreamObj*, align 8
  store %dreamObj* %19, %dreamObj** %scope_stack11, align 8
  %new_scope12 = load %dreamObj*, %dreamObj** %scope_stack11, align 8
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %17, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %20 = bitcast i8* %value_temp14 to %dreamObj* (...)*
  %21 = call %dreamObj* (...) %20(%dreamObj* %new_scope12)
  %22 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0), i32 1)
  %23 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i32 1)
  %24 = call %dreamObj* @new_scope(%dreamObj* %23, i32 1)
  %scope_stack15 = alloca %dreamObj*, align 8
  store %dreamObj* %24, %dreamObj** %scope_stack15, align 8
  %new_scope16 = load %dreamObj*, %dreamObj** %scope_stack15, align 8
  %25 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack17 = alloca %dreamObj*, align 8
  store %dreamObj* %25, %dreamObj** %scope_stack17, align 8
  %new_scope18 = load %dreamObj*, %dreamObj** %scope_stack17, align 8
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  br label %for_start

for_start:                                        ; preds = %ifcont, %EntryBlock
  %memberptr19 = getelementptr %dreamObj, %dreamObj* %22, i32 0, i32 2
  %value_temp20 = load i8*, i8** %memberptr19, align 8
  %26 = bitcast i8* %value_temp20 to %dreamObj* (...)*
  %27 = call %dreamObj* (...) %26(%dreamObj* %new_scope16)
  %28 = call %dreamObj* @set_var(%dreamObj* %new_scope18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @12, i32 0, i32 0), %dreamObj* %27)
  %29 = icmp ne %dreamObj* %27, %null_dream
  br i1 %29, label %then, label %forcont

then:                                             ; preds = %for_start
  store i32 5, i32* @line, align 4
  %30 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @13, i32 0, i32 0), i32 1)
  %31 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @14, i32 0, i32 0), i32 1)
  %32 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @15, i32 0, i32 0), i32 1)
  %33 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @16, i32 0, i32 0), i32 1)
  %34 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i32 1)
  %35 = call %dreamObj* @new_scope(%dreamObj* %34, i32 1)
  %scope_stack21 = alloca %dreamObj*, align 8
  store %dreamObj* %35, %dreamObj** %scope_stack21, align 8
  %new_scope22 = load %dreamObj*, %dreamObj** %scope_stack21, align 8
  %memberptr23 = getelementptr %dreamObj, %dreamObj* %32, i32 0, i32 2
  %value_temp24 = load i8*, i8** %memberptr23, align 8
  %36 = bitcast i8* %value_temp24 to %dreamObj* (...)*
  %37 = call %dreamObj* (...) %36(%dreamObj* %new_scope22, %dreamObj* %33)
  %38 = call %dreamObj* @add_c(%dreamObj* %30, %dreamObj* %37)
  %39 = call %dreamObj* @set_var(%dreamObj* %new_scope18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), %dreamObj* %38)
  store i32 6, i32* @line, align 4
  %40 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i32 1)
  %41 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @20, i32 0, i32 0), i32 1)
  %42 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @21, i32 0, i32 0), i32 1)
  %43 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i32 1)
  %44 = call %dreamObj* @new_scope(%dreamObj* %43, i32 1)
  %scope_stack25 = alloca %dreamObj*, align 8
  store %dreamObj* %44, %dreamObj** %scope_stack25, align 8
  %new_scope26 = load %dreamObj*, %dreamObj** %scope_stack25, align 8
  %memberptr27 = getelementptr %dreamObj, %dreamObj* %41, i32 0, i32 2
  %value_temp28 = load i8*, i8** %memberptr27, align 8
  %45 = bitcast i8* %value_temp28 to %dreamObj* (...)*
  %46 = call %dreamObj* (...) %45(%dreamObj* %new_scope26, %dreamObj* %42)
  %47 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @23, i32 0, i32 0), i32 1)
  %48 = call %dreamObj* @equals_c(%dreamObj* %46, %dreamObj* %47)
  %memberptr29 = getelementptr %dreamObj, %dreamObj* %48, i32 0, i32 2
  %value_temp30 = load i8*, i8** %memberptr29, align 8
  %49 = bitcast i8* %value_temp30 to i32*
  %temp = load i32, i32* %49, align 4
  %50 = icmp eq i32 %temp, 1
  br i1 %50, label %then31, label %ifcont

then31:                                           ; preds = %then
  %51 = call %dreamObj* @new_scope(%dreamObj* %new_scope18, i32 1)
  %scope_stack32 = alloca %dreamObj*, align 8
  store %dreamObj* %51, %dreamObj** %scope_stack32, align 8
  %new_scope33 = load %dreamObj*, %dreamObj** %scope_stack32, align 8
  store i32 7, i32* @line, align 4
  %52 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @24, i32 0, i32 0), i32 1)
  %53 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i32 1)
  %54 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0), i32 0)
  %55 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i32 1)
  %56 = call %dreamObj* @new_scope(%dreamObj* %55, i32 1)
  %scope_stack34 = alloca %dreamObj*, align 8
  store %dreamObj* %56, %dreamObj** %scope_stack34, align 8
  %new_scope35 = load %dreamObj*, %dreamObj** %scope_stack34, align 8
  %memberptr36 = getelementptr %dreamObj, %dreamObj* %54, i32 0, i32 2
  %value_temp37 = load i8*, i8** %memberptr36, align 8
  %57 = bitcast i8* %value_temp37 to %dreamObj* (...)*
  %58 = call %dreamObj* (...) %57(%dreamObj* %new_scope35, %dreamObj* %52)
  store i32 8, i32* @line, align 4
  %str_stack38 = alloca %dreamObj*, align 8
  %59 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @28, i32 0, i32 0))
  store %dreamObj* %59, %dreamObj** %str_stack38, align 8
  %str39 = load %dreamObj*, %dreamObj** %str_stack38, align 8
  %60 = call %dreamObj* @set_var(%dreamObj* %new_scope33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @29, i32 0, i32 0), %dreamObj* %str39)
  br label %ifcont

ifcont:                                           ; preds = %then31, %then
  %null_dream40 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %61 = icmp ne %dreamObj* %27, %null_dream40
  br i1 %61, label %for_start, label %forcont

forcont:                                          ; preds = %ifcont, %for_start
  store i32 11, i32* @line, align 4
  %62 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @30, i32 0, i32 0), i32 1)
  %63 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @31, i32 0, i32 0), i32 1)
  %64 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @32, i32 0, i32 0), i32 0)
  %65 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @33, i32 0, i32 0), i32 1)
  %66 = call %dreamObj* @new_scope(%dreamObj* %65, i32 1)
  %scope_stack41 = alloca %dreamObj*, align 8
  store %dreamObj* %66, %dreamObj** %scope_stack41, align 8
  %new_scope42 = load %dreamObj*, %dreamObj** %scope_stack41, align 8
  %memberptr43 = getelementptr %dreamObj, %dreamObj* %64, i32 0, i32 2
  %value_temp44 = load i8*, i8** %memberptr43, align 8
  %67 = bitcast i8* %value_temp44 to %dreamObj* (...)*
  %68 = call %dreamObj* (...) %67(%dreamObj* %new_scope42, %dreamObj* %62)
  store i32 12, i32* @line, align 4
  %69 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @34, i32 0, i32 0), i32 1)
  ret %dreamObj* %69
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{!"string", !"char"}
!2 = !{!"0"}
