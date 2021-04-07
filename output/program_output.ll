; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@0 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@dreamObjType = external global i32
@1 = private unnamed_addr constant [9 x i8] c"test_obj\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"test_obj\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@line = external global i32
@5 = private unnamed_addr constant [17 x i8] c"print remapped!!\00", align 1
@6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@7 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@10 = private unnamed_addr constant [15 x i8] c"AndroidContext\00", align 1
@11 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %func_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @AndroidContext to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), %dreamObj* %func)
  %3 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), %dreamObj* %obj)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

declare void @dream_log(%dreamObj*)

declare void @printx(i32, i8*, %dreamObj*, ...)

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

declare %dreamObj* @dreamBool(i32*)

declare %dreamObj* @dreamFunc(i8*)

declare %dreamObj* @make_dream(i8*, %dreamObj*)

declare %dreamObj* @new_scope(%dreamObj*, i32)

declare %dreamObj* @copy(%dreamObj*)

declare %dreamObj* @deep_copy(%dreamObj*)

declare %dreamObj* @shallow_copy(%dreamObj*)

declare %dreamObj* @dict()

declare %dreamObj* @add_c(%dreamObj*, %dreamObj*)

declare %dreamObj* @set_parent(%dreamObj*, %dreamObj*)

declare %dreamObj* @merge(%dreamObj*, %dreamObj*)

declare i8* @ctype(%dreamObj*)

declare void @display()

declare void @native_int(i32)

declare void @native_test(i32)

declare void @check(%dreamObj*, %dreamObj*)

define %dreamObj* @AndroidContext(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @make_dream(i8* bitcast (%dreamObj* (%dreamObj*)* @test_obj to i8*), %dreamObj* bitcast (i32* @dreamObjType to %dreamObj*))
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %1 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), %dreamObj* %obj)
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2, i32 0, i32 0), %dreamObj* %func)
  %func_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @test to i8*))
  store %dreamObj* %3, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), %dreamObj* %func2)
  %5 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), %dreamObj* %func)
  store i32 8, i32* @line, align 4
  %6 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %7 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0))
  %8 = call %dreamObj* @new_scope(%dreamObj* %7, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %8, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %6, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %9 = bitcast i8* %value_temp to %dreamObj* (...)*
  %10 = call %dreamObj* (...) %9(%dreamObj* %new_scope)
  ret %dreamObj* %func
}

define %dreamObj* @test_obj(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %1 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @test(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0))
  %1 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0))
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
  %7 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*)* @merge to i8*))
  store %dreamObj* %7, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !1
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %8 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %9 = call %dreamObj* (...) %8(%dreamObj* %obj, %dreamObj* %func)
  store i32 3, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0))
  store %dreamObj* %10, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack5 = alloca %dreamObj*, align 8
  %11 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*)* @dream_log to i8*))
  store %dreamObj* %11, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !1
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %12 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %13 = call %dreamObj* (...) %12(%dreamObj* %str)
  ret %dreamObj* %4
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{}
!1 = !{!"0"}
