; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [7 x i8] c"printx\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@2 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"g_obj\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"g_obj\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@8 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@9 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@11 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@12 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@13 = private unnamed_addr constant [2 x i8] c"x\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %obj_stack1 = alloca %dreamObj*, align 8
  %1 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*)* @g_obj to i8*), %dreamObj** null)
  store %dreamObj* %1, %dreamObj** %obj_stack1, align 8
  %obj2 = load %dreamObj*, %dreamObj** %obj_stack1, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0), %dreamObj* %obj2)
  %3 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), %dreamObj* %obj)
  %func_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @g to i8*))
  store %dreamObj* %4, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %5 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0), %dreamObj* %func)
  %6 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @8, i32 0, i32 0), %dreamObj* %obj)
  store i32 6, i32* @line, align 4
  %7 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @9, i32 0, i32 0))
  %8 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0))
  %9 = call %dreamObj* @new_scope(%dreamObj* %8, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %9, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %7, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %10 = bitcast i8* %value_temp to %dreamObj* (...)*
  %11 = call %dreamObj* (...) %10(%dreamObj* %new_scope)
  %12 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i32 0, i32 0), %dreamObj* %11)
  store i32 7, i32* @line, align 4
  %13 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @12, i32 0, i32 0))
  %14 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @13, i32 0, i32 0), i32 0)
  %func_stack3 = alloca %dreamObj*, align 8
  %15 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %15, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8, !var_args !0
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %func4, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %16 = bitcast i8* %value_temp6 to %dreamObj* (...)*
  %17 = call %dreamObj* (...) %16(i32 1, %dreamObj* %14)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

declare void @gc(%dreamObj*)

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

define %dreamObj* @g_obj(%dreamObj* %scope) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 3, i32* @line, align 4
  store i32 4, i32* @line, align 4
  %func_stack1 = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !0
  %2 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @0, i32 0, i32 0))
  %memberptr = getelementptr %dreamObj, %dreamObj* %2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0), i32 0)
  %5 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @g(%dreamObj* %scope) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  %1 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0))
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
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !2
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
!2 = !{!"0"}
