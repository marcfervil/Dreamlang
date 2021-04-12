; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [1022 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@5 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 3, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %int_stack1 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %2, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %int_stack3 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamInt(i32 3)
  store %dreamObj* %3, %dreamObj** %int_stack3, align 8
  %int4 = load %dreamObj*, %dreamObj** %int_stack3, align 8
  %func_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %4, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %5 = bitcast i8* %value_temp to %dreamObj* (...)*
  %6 = call %dreamObj* (...) %5(i32 3, %dreamObj* %int, %dreamObj* %int2, %dreamObj* %int4)
  %int_stack5 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* @dreamInt(i32 4)
  store %dreamObj* %7, %dreamObj** %int_stack5, align 8
  %int6 = load %dreamObj*, %dreamObj** %int_stack5, align 8
  %int_stack7 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamInt(i32 5)
  store %dreamObj* %8, %dreamObj** %int_stack7, align 8
  %int8 = load %dreamObj*, %dreamObj** %int_stack7, align 8
  %int_stack9 = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamInt(i32 6)
  store %dreamObj* %9, %dreamObj** %int_stack9, align 8
  %int10 = load %dreamObj*, %dreamObj** %int_stack9, align 8
  %func_stack11 = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %10, %dreamObj** %func_stack11, align 8
  %func12 = load %dreamObj*, %dreamObj** %func_stack11, align 8, !var_args !0
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %func12, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %11 = bitcast i8* %value_temp14 to %dreamObj* (...)*
  %12 = call %dreamObj* (...) %11(i32 3, %dreamObj* %int6, %dreamObj* %int8, %dreamObj* %int10)
  %int_stack15 = alloca %dreamObj*, align 8
  %13 = call %dreamObj* @dreamInt(i32 7)
  store %dreamObj* %13, %dreamObj** %int_stack15, align 8
  %int16 = load %dreamObj*, %dreamObj** %int_stack15, align 8
  %int_stack17 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamInt(i32 8)
  store %dreamObj* %14, %dreamObj** %int_stack17, align 8
  %int18 = load %dreamObj*, %dreamObj** %int_stack17, align 8
  %int_stack19 = alloca %dreamObj*, align 8
  %15 = call %dreamObj* @dreamInt(i32 9)
  store %dreamObj* %15, %dreamObj** %int_stack19, align 8
  %int20 = load %dreamObj*, %dreamObj** %int_stack19, align 8
  %func_stack21 = alloca %dreamObj*, align 8
  %16 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %16, %dreamObj** %func_stack21, align 8
  %func22 = load %dreamObj*, %dreamObj** %func_stack21, align 8, !var_args !0
  %memberptr23 = getelementptr %dreamObj, %dreamObj* %func22, i32 0, i32 2
  %value_temp24 = load i8*, i8** %memberptr23, align 8
  %17 = bitcast i8* %value_temp24 to %dreamObj* (...)*
  %18 = call %dreamObj* (...) %17(i32 3, %dreamObj* %int16, %dreamObj* %int18, %dreamObj* %int20)
  %func_stack25 = alloca %dreamObj*, align 8
  %19 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %19, %dreamObj** %func_stack25, align 8
  %func26 = load %dreamObj*, %dreamObj** %func_stack25, align 8, !var_args !0
  %memberptr27 = getelementptr %dreamObj, %dreamObj* %func26, i32 0, i32 2
  %value_temp28 = load i8*, i8** %memberptr27, align 8
  %20 = bitcast i8* %value_temp28 to %dreamObj* (...)*
  %21 = call %dreamObj* (...) %20(i32 3, %dreamObj* %6, %dreamObj* %12, %dreamObj* %18)
  %22 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), %dreamObj* %21)
  store i32 5, i32* @line, align 4
  %23 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0))
  %24 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0))
  %int_stack29 = alloca %dreamObj*, align 8
  %25 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %25, %dreamObj** %int_stack29, align 8
  %int30 = load %dreamObj*, %dreamObj** %int_stack29, align 8
  %26 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0))
  %27 = call %dreamObj* @new_scope(%dreamObj* %26, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %27, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr31 = getelementptr %dreamObj, %dreamObj* %24, i32 0, i32 2
  %value_temp32 = load i8*, i8** %memberptr31, align 8
  %28 = bitcast i8* %value_temp32 to %dreamObj* (...)*
  %29 = call %dreamObj* (...) %28(%dreamObj* %new_scope, %dreamObj* %int30)
  %30 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @4, i32 0, i32 0))
  %int_stack33 = alloca %dreamObj*, align 8
  %31 = call %dreamObj* @dreamInt(i32 0)
  store %dreamObj* %31, %dreamObj** %int_stack33, align 8
  %int34 = load %dreamObj*, %dreamObj** %int_stack33, align 8
  %32 = call %dreamObj* (%dreamObj*, i8*, ...) @get_var(%dreamObj* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0))
  %33 = call %dreamObj* @new_scope(%dreamObj* %32, i32 1)
  %scope_stack35 = alloca %dreamObj*, align 8
  store %dreamObj* %33, %dreamObj** %scope_stack35, align 8
  %new_scope36 = load %dreamObj*, %dreamObj** %scope_stack35, align 8
  %memberptr37 = getelementptr %dreamObj, %dreamObj* %30, i32 0, i32 2
  %value_temp38 = load i8*, i8** %memberptr37, align 8
  %34 = bitcast i8* %value_temp38 to %dreamObj* (...)*
  %35 = call %dreamObj* (...) %34(%dreamObj* %new_scope36, %dreamObj* %int34)
  %func_stack39 = alloca %dreamObj*, align 8
  %36 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %36, %dreamObj** %func_stack39, align 8
  %func40 = load %dreamObj*, %dreamObj** %func_stack39, align 8, !var_args !0
  %memberptr41 = getelementptr %dreamObj, %dreamObj* %func40, i32 0, i32 2
  %value_temp42 = load i8*, i8** %memberptr41, align 8
  %37 = bitcast i8* %value_temp42 to %dreamObj* (...)*
  %38 = call %dreamObj* (...) %37(i32 1, %dreamObj* %35)
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

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
