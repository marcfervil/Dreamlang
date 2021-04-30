; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@4 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"woop\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"lala_obj\00", align 1
@11 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@12 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@13 = private unnamed_addr constant [9 x i8] c"lala_obj\00", align 1
@14 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@15 = private unnamed_addr constant [5 x i8] c"lala\00", align 1
@16 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@17 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@18 = private unnamed_addr constant [3 x i8] c"ee\00", align 1
@19 = private unnamed_addr constant [5 x i8] c"lala\00", align 1
@20 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@21 = private unnamed_addr constant [5 x i8] c"woop\00", align 1
@22 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 3, i32* @line, align 4
  %obj_stack1 = alloca %dreamObj*, align 8
  %1 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @lala_obj to i8*), %dreamObj** null)
  store %dreamObj* %1, %dreamObj** %obj_stack1, align 8
  %obj2 = load %dreamObj*, %dreamObj** %obj_stack1, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), %dreamObj* %obj2)
  %3 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), %dreamObj* %obj)
  %func_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %4, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %5 = bitcast i8* %value_temp to %dreamObj* (...)*
  %6 = call %dreamObj* (...) %5(i32 0)
  %7 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), %dreamObj* %6)
  %func_stack3 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @lala to i8*))
  store %dreamObj* %8, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8
  %9 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @15, i32 0, i32 0), %dreamObj* %func4)
  %10 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), %dreamObj* %obj)
  %func_stack5 = alloca %dreamObj*, align 8
  %11 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %11, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !0
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %12 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %13 = call %dreamObj* (...) %12(i32 0)
  %14 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @17, i32 0, i32 0), %dreamObj* %13)
  store i32 12, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %15 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @18, i32 0, i32 0))
  store %dreamObj* %15, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %16 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @19, i32 0, i32 0), i32 1)
  %17 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i32 1)
  %18 = call %dreamObj* @new_scope(%dreamObj* %17, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %18, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr9 = getelementptr %dreamObj, %dreamObj* %16, i32 0, i32 2
  %value_temp10 = load i8*, i8** %memberptr9, align 8
  %19 = bitcast i8* %value_temp10 to %dreamObj* (...)*
  %20 = call %dreamObj* (...) %19(%dreamObj* %new_scope)
  %21 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @21, i32 0, i32 0), i32 0)
  %22 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i32 1)
  %23 = call %dreamObj* @new_scope(%dreamObj* %22, i32 1)
  %scope_stack11 = alloca %dreamObj*, align 8
  store %dreamObj* %23, %dreamObj** %scope_stack11, align 8
  %new_scope12 = load %dreamObj*, %dreamObj** %scope_stack11, align 8
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %21, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %24 = bitcast i8* %value_temp14 to %dreamObj* (...)*
  %25 = call %dreamObj* (...) %24(%dreamObj* %new_scope12, %dreamObj* %str)
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

define %dreamObj* @lala_obj(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 4, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @0, i32 0, i32 0))
  store %dreamObj* %1, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0), %dreamObj* %str)
  store i32 5, i32* @line, align 4
  %func_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, ...)* @woop to i8*))
  store %dreamObj* %3, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @5, i32 0, i32 0), %dreamObj* %func2)
  %5 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), %dreamObj* %new_scope)
  %str_stack3 = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0))
  store %dreamObj* %6, %dreamObj** %str_stack3, align 8
  %str4 = load %dreamObj*, %dreamObj** %str_stack3, align 8
  %func_stack5 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %7, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %8 = bitcast i8* %value_temp to %dreamObj* (...)*
  %9 = call %dreamObj* (...) %8(i32 1, %dreamObj* %str4)
  %10 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), %dreamObj* %9)
  %11 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @9, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @woop(%dreamObj* %scope, %dreamObj* %f, ...) !arg_names !2 {
EntryBlock:
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %f, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 6, i32* @line, align 4
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i32 0, i32 0), i32 1)
  %func_stack1 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %2, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(i32 1, %dreamObj* %1)
  %str_stack = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0))
  store %dreamObj* %5, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  ret %dreamObj* %str
}

define %dreamObj* @lala(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i32 1)
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* @new_scope(%dreamObj* %1, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %2, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %0, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %new_scope)
  %obj_stack = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamObject()
  store %dreamObj* %5, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %6 = call %dreamObj* @set_parent(%dreamObj* %obj, %dreamObj* %4)
  %parent_stack = alloca %dreamObj*, align 8
  store %dreamObj* %6, %dreamObj** %parent_stack, align 8
  %new_parentee = load %dreamObj*, %dreamObj** %parent_stack, align 8
  %func_stack1 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @merge to i8*))
  store %dreamObj* %7, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !3
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %8 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %9 = call %dreamObj* (...) %8(%dreamObj* %obj, %dreamObj* %func)
  ret %dreamObj* %4
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{}
!2 = !{!"f"}
!3 = !{!"0"}
