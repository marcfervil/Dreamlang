; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@line = external global i32
@0 = private unnamed_addr constant [24 x i8] c"Logging from dreamlang!\00", align 1
@1 = private unnamed_addr constant [23 x i8] c"check one check two!!!\00", align 1
@2 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@3 = private unnamed_addr constant [11 x i8] c"myFunction\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

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
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), %dreamObj* %func)
  %3 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), %dreamObj* %obj)
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

define %dreamObj* @myFunction(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 3, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0))
  store %dreamObj* %0, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack1 = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*)* @dream_log to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !1
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %2 = bitcast i8* %value_temp to %dreamObj* (...)*
  %3 = call %dreamObj* (...) %2(%dreamObj* %str)
  store i32 4, i32* @line, align 4
  %str_stack3 = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @1, i32 0, i32 0))
  store %dreamObj* %4, %dreamObj** %str_stack3, align 8
  %str4 = load %dreamObj*, %dreamObj** %str_stack3, align 8
  %func_stack5 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*)* @dream_log to i8*))
  store %dreamObj* %5, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !1
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %6 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %7 = call %dreamObj* (...) %6(%dreamObj* %str4)
  %str_stack9 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2, i32 0, i32 0))
  store %dreamObj* %8, %dreamObj** %str_stack9, align 8
  %str10 = load %dreamObj*, %dreamObj** %str_stack9, align 8
  ret %dreamObj* %str10
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{}
!1 = !{!"0"}
