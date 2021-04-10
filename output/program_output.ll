; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@1 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"i\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 3, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %func_stack = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @count to i8*))
  store %dreamObj* %2, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %int)
  %5 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0))
  %6 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0))
  %7 = call %dreamObj* @new_scope(%dreamObj* %6, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %7, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %8 = call %dreamObj* @new_scope(%dreamObj* %obj, i32 1)
  %scope_stack1 = alloca %dreamObj*, align 8
  store %dreamObj* %8, %dreamObj** %scope_stack1, align 8
  %new_scope2 = load %dreamObj*, %dreamObj** %scope_stack1, align 8
  %null_dream3 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %memberptr4 = getelementptr %dreamObj, %dreamObj* %5, i32 0, i32 2
  %value_temp5 = load i8*, i8** %memberptr4, align 8
  %9 = bitcast i8* %value_temp5 to %dreamObj* (...)*
  %10 = call %dreamObj* (...) %9(%dreamObj* %new_scope)
  %11 = call %dreamObj* @set_var(%dreamObj* %new_scope2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0), %dreamObj* %10)
  br label %for_start

for_start:                                        ; preds = %then, %EntryBlock
  %12 = icmp ne %dreamObj* %10, %null_dream3
  br i1 %12, label %then, label %forcont

then:                                             ; preds = %for_start
  store i32 4, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %13 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  store %dreamObj* %13, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack6 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %14, %dreamObj** %func_stack6, align 8
  %func7 = load %dreamObj*, %dreamObj** %func_stack6, align 8, !var_args !1
  %memberptr8 = getelementptr %dreamObj, %dreamObj* %func7, i32 0, i32 2
  %value_temp9 = load i8*, i8** %memberptr8, align 8
  %15 = bitcast i8* %value_temp9 to %dreamObj* (...)*
  %16 = call %dreamObj* (...) %15(i32 1, %dreamObj* %str)
  %memberptr10 = getelementptr %dreamObj, %dreamObj* %5, i32 0, i32 2
  %value_temp11 = load i8*, i8** %memberptr10, align 8
  %17 = bitcast i8* %value_temp11 to %dreamObj* (...)*
  %18 = call %dreamObj* (...) %17(%dreamObj* %new_scope)
  %19 = call %dreamObj* @set_var(%dreamObj* %new_scope2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0), %dreamObj* %18)
  %null_dream12 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %20 = icmp ne %dreamObj* %18, %null_dream12
  br i1 %20, label %for_start, label %forcont

forcont:                                          ; preds = %then, %for_start
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

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"0"}
!1 = !{!"1"}
