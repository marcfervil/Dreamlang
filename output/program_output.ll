; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@line = external global i32
@0 = private unnamed_addr constant [11 x i8] c"myFunction\00", align 1
@1 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@2 = private unnamed_addr constant [11 x i8] c"myFunction\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 2, i32* @line, align 4
  %func_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @myFunction to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @0, i32 0, i32 0), %dreamObj* %func)
  %3 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), %dreamObj* %obj)
  store i32 6, i32* @line, align 4
  %4 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0))
  %5 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0))
  %6 = call %dreamObj* @new_scope(%dreamObj* %5, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %6, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %4, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %7 = bitcast i8* %value_temp to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(%dreamObj* %new_scope)
  %int_stack = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamInt(i32 10)
  store %dreamObj* %9, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %10 = call %dreamObj* @add_c(%dreamObj* %8, %dreamObj* %int)
  %func_stack1 = alloca %dreamObj*, align 8
  %11 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %11, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !0
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %12 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %13 = call %dreamObj* (...) %12(i32 1, %dreamObj* %10)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

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

declare %dreamObj* @make_dream(i8*, i8*)

declare %dreamObj* @new_scope(%dreamObj*, i32)

declare %dreamObj* @copy(%dreamObj*)

declare %dreamObj* @deep_copy(%dreamObj*)

declare %dreamObj* @shallow_copy(%dreamObj*)

declare %dreamObj* @dict()

declare %dreamObj* @add_c(%dreamObj*, %dreamObj*)

declare %dreamObj* @set_parent(%dreamObj*)

declare %dreamObj* @merge(%dreamObj*, %dreamObj*)

declare i8* @ctype(%dreamObj*)

declare void @display()

declare void @native_int(i32)

declare void @native_test(i32)

declare void @check(%dreamObj*, %dreamObj*)

define %dreamObj* @myFunction(%dreamObj* %scope) !arg_names !1 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 3, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %0, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  ret %dreamObj* %int
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{}
