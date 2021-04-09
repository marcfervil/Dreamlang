; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@2 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@10 = private unnamed_addr constant [2 x i8] c"e\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 2, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 2)
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
  %5 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), %dreamObj* %4)
  store i32 3, i32* @line, align 4
  %6 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0))
  %7 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i32 0)
  %8 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0))
  %9 = call %dreamObj* @new_scope(%dreamObj* %8, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %9, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr1 = getelementptr %dreamObj, %dreamObj* %7, i32 0, i32 2
  %value_temp2 = load i8*, i8** %memberptr1, align 8
  %10 = bitcast i8* %value_temp2 to %dreamObj* (...)*
  %11 = call %dreamObj* (...) %10(%dreamObj* %new_scope)
  store i32 4, i32* @line, align 4
  %12 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0))
  %13 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @5, i32 0, i32 0), i32 0)
  %14 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0))
  %15 = call %dreamObj* @new_scope(%dreamObj* %14, i32 1)
  %scope_stack3 = alloca %dreamObj*, align 8
  store %dreamObj* %15, %dreamObj** %scope_stack3, align 8
  %new_scope4 = load %dreamObj*, %dreamObj** %scope_stack3, align 8
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %13, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %16 = bitcast i8* %value_temp6 to %dreamObj* (...)*
  %17 = call %dreamObj* (...) %16(%dreamObj* %new_scope4)
  store i32 5, i32* @line, align 4
  %18 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0))
  %19 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %20 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0))
  %21 = call %dreamObj* @new_scope(%dreamObj* %20, i32 1)
  %scope_stack7 = alloca %dreamObj*, align 8
  store %dreamObj* %21, %dreamObj** %scope_stack7, align 8
  %new_scope8 = load %dreamObj*, %dreamObj** %scope_stack7, align 8
  %null_dream9 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %memberptr10 = getelementptr %dreamObj, %dreamObj* %19, i32 0, i32 2
  %value_temp11 = load i8*, i8** %memberptr10, align 8
  %22 = bitcast i8* %value_temp11 to %dreamObj* (...)*
  %23 = call %dreamObj* (...) %22(%dreamObj* %new_scope8)
  %24 = icmp ne %dreamObj* %23, %null_dream9
  br i1 %24, label %then, label %forcont

then:                                             ; preds = %EntryBlock
  %25 = call %dreamObj* @new_scope(%dreamObj* %obj, i32 1)
  %scope_stack12 = alloca %dreamObj*, align 8
  store %dreamObj* %25, %dreamObj** %scope_stack12, align 8
  %new_scope13 = load %dreamObj*, %dreamObj** %scope_stack12, align 8
  store i32 7, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %26 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @10, i32 0, i32 0))
  store %dreamObj* %26, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack14 = alloca %dreamObj*, align 8
  %27 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %27, %dreamObj** %func_stack14, align 8
  %func15 = load %dreamObj*, %dreamObj** %func_stack14, align 8, !var_args !1
  %memberptr16 = getelementptr %dreamObj, %dreamObj* %func15, i32 0, i32 2
  %value_temp17 = load i8*, i8** %memberptr16, align 8
  %28 = bitcast i8* %value_temp17 to %dreamObj* (...)*
  %29 = call %dreamObj* (...) %28(i32 1, %dreamObj* %str)
  br label %forcont

forcont:                                          ; preds = %then, %EntryBlock
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
