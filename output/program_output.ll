; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [13 x i8] c"Hello world!\00", align 1
@1 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@5 = private unnamed_addr constant [12 x i8] c"finished!!!\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 2, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0))
  store %dreamObj* %1, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @app to i8*))
  store %dreamObj* %2, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %str)
  %5 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), %dreamObj* %4)
  store i32 3, i32* @line, align 4
  %6 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2, i32 0, i32 0))
  %7 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0), i32 0)
  %8 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0))
  %9 = call %dreamObj* @new_scope(%dreamObj* %8, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %9, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr1 = getelementptr %dreamObj, %dreamObj* %7, i32 0, i32 2
  %value_temp2 = load i8*, i8** %memberptr1, align 8
  %10 = bitcast i8* %value_temp2 to %dreamObj* (...)*
  %11 = call %dreamObj* (...) %10(%dreamObj* %new_scope)
  store i32 4, i32* @line, align 4
  %str_stack3 = alloca %dreamObj*, align 8
  %12 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0))
  store %dreamObj* %12, %dreamObj** %str_stack3, align 8
  %str4 = load %dreamObj*, %dreamObj** %str_stack3, align 8
  %func_stack5 = alloca %dreamObj*, align 8
  %13 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %13, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !1
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %14 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %15 = call %dreamObj* (...) %14(i32 1, %dreamObj* %str4)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

declare %dreamObj* @app(%dreamObj*)

declare void @gc(%dreamObj*)

declare void @dream_log(%dreamObj*)

declare void @mac_init(...)

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

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"0"}
!1 = !{!"1"}
