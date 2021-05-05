; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@5 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@6 = private unnamed_addr constant [7 x i8] c"getGuy\00", align 1
@7 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@9 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@11 = private unnamed_addr constant [5 x i8] c"marc\00", align 1
@12 = private unnamed_addr constant [7 x i8] c"getGuy\00", align 1
@13 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@14 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@15 = private unnamed_addr constant [5 x i8] c"marc\00", align 1
@16 = private unnamed_addr constant [7 x i8] c"getGuy\00", align 1
@17 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@18 = private unnamed_addr constant [4 x i8] c"age\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 2, i32* @line, align 4
  %func_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, %dreamObj*, ...)* @getGuy to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @6, i32 0, i32 0), %dreamObj* %func)
  %3 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), %dreamObj* %obj)
  %4 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %5 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @9, i32 0, i32 0))
  %func_stack1 = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %6, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %7 = bitcast i8* %value_temp to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(i32 2, %dreamObj* %4, %dreamObj* %5)
  %9 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0), %dreamObj* %8)
  store i32 10, i32* @line, align 4
  %10 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @11, i32 0, i32 0))
  %11 = call %dreamObj* @dreamInt(i32 21)
  %12 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @12, i32 0, i32 0), i32 1)
  %13 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i32 1)
  %14 = call %dreamObj* @new_scope(%dreamObj* %13, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %14, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %12, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %15 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %16 = call %dreamObj* (...) %15(%dreamObj* %new_scope, %dreamObj* %10, %dreamObj* %11)
  %17 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i32 0)
  %18 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @15, i32 0, i32 0))
  %19 = call %dreamObj* @dreamInt(i32 21)
  %20 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @16, i32 0, i32 0), i32 1)
  %21 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i32 1)
  %22 = call %dreamObj* @new_scope(%dreamObj* %21, i32 1)
  %scope_stack5 = alloca %dreamObj*, align 8
  store %dreamObj* %22, %dreamObj** %scope_stack5, align 8
  %new_scope6 = load %dreamObj*, %dreamObj** %scope_stack5, align 8
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %20, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %23 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %24 = call %dreamObj* (...) %23(%dreamObj* %new_scope6, %dreamObj* %18, %dreamObj* %19)
  %25 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @18, i32 0, i32 0), i32 0)
  %func_stack9 = alloca %dreamObj*, align 8
  %26 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %26, %dreamObj** %func_stack9, align 8
  %func10 = load %dreamObj*, %dreamObj** %func_stack9, align 8, !var_args !0
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %func10, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %27 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %28 = call %dreamObj* (...) %27(i32 2, %dreamObj* %17, %dreamObj* %25)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

declare void @gc(%dreamObj*)

declare void @free(i8*)

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

declare void @input()

declare void @clear()

define %dreamObj* @getGuy(%dreamObj* %scope, %dreamObj* %name, %dreamObj* %age, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %name, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), %dreamObj* %varName)
  %alloctmp1 = alloca %dreamObj*, align 8
  store %dreamObj* %age, %dreamObj** %alloctmp1, align 8
  %varName2 = load %dreamObj*, %dreamObj** %alloctmp1, align 8
  %1 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i32 0, i32 0), %dreamObj* %varName2)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 3, i32* @line, align 4
  %obj_stack = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamObject()
  store %dreamObj* %2, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 4, i32* @line, align 4
  %3 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i32 1)
  %4 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0), %dreamObj* %3)
  store i32 5, i32* @line, align 4
  %5 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @4, i32 0, i32 0), i32 1)
  %6 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @5, i32 0, i32 0), %dreamObj* %5)
  ret %dreamObj* %obj
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{!"name", !"age"}
