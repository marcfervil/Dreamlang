; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@1 = private unnamed_addr constant [5 x i8] c"swag\00", align 1
@2 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@3 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@4 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@6 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@7 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@8 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"depl\00", align 1
@11 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@12 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@13 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@14 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@15 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@16 = private unnamed_addr constant [14 x i8] c"<Undefined> =\00", align 1
@17 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@18 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@19 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@20 = private unnamed_addr constant [9 x i8] c"lalalala\00", align 1
@21 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@22 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@23 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@24 = private unnamed_addr constant [4 x i8] c"yuh\00", align 1
@25 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@26 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@27 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@28 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@29 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@30 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@31 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@32 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@33 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@34 = private unnamed_addr constant [9 x i8] c"List_obj\00", align 1
@35 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@36 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@37 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@38 = private unnamed_addr constant [9 x i8] c"List_obj\00", align 1
@39 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@40 = private unnamed_addr constant [7 x i8] c"swag =\00", align 1
@41 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@42 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@43 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@44 = private unnamed_addr constant [5 x i8] c"List\00", align 1
@45 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@46 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@47 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@48 = private unnamed_addr constant [5 x i8] c"john\00", align 1
@49 = private unnamed_addr constant [5 x i8] c"List\00", align 1
@50 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@51 = private unnamed_addr constant [8 x i8] c"animals\00", align 1
@52 = private unnamed_addr constant [7 x i8] c"john =\00", align 1
@53 = private unnamed_addr constant [8 x i8] c"animals\00", align 1
@54 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@55 = private unnamed_addr constant [4 x i8] c"rip\00", align 1
@56 = private unnamed_addr constant [8 x i8] c"animals\00", align 1
@57 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@58 = private unnamed_addr constant [6 x i8] c"rip =\00", align 1
@59 = private unnamed_addr constant [8 x i8] c"animals\00", align 1
@60 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@61 = private unnamed_addr constant [8 x i8] c"animals\00", align 1
@62 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@63 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@64 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@65 = private unnamed_addr constant [5 x i8] c"List\00", align 1
@66 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@67 = private unnamed_addr constant [9 x i8] c"animals2\00", align 1
@68 = private unnamed_addr constant [9 x i8] c"animals2\00", align 1
@69 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1
@70 = private unnamed_addr constant [8 x i8] c"animals\00", align 1
@71 = private unnamed_addr constant [10 x i8] c"full_name\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 2, i32* @line, align 4
  %1 = call %dreamObj* @dreamInt(i32 1)
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @0, i32 0, i32 0), %dreamObj* %1)
  store i32 3, i32* @line, align 4
  %obj_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @List_obj to i8*), %dreamObj** null)
  store %dreamObj* %3, %dreamObj** %obj_stack1, align 8
  %obj2 = load %dreamObj*, %dreamObj** %obj_stack1, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @34, i32 0, i32 0), %dreamObj* %obj2)
  %5 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @35, i32 0, i32 0), %dreamObj* %obj)
  %func_stack = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %6, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %7 = bitcast i8* %value_temp to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(i32 0)
  %9 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @36, i32 0, i32 0), %dreamObj* %8)
  %func_stack3 = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, ...)* @List to i8*))
  store %dreamObj* %10, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8
  %11 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @44, i32 0, i32 0), %dreamObj* %func4)
  %12 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), %dreamObj* %obj)
  %13 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @46, i32 0, i32 0))
  %func_stack5 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %14, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !0
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %15 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %16 = call %dreamObj* (...) %15(i32 1, %dreamObj* %13)
  %17 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @47, i32 0, i32 0), %dreamObj* %16)
  store i32 36, i32* @line, align 4
  %18 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @48, i32 0, i32 0))
  %19 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @49, i32 0, i32 0), i32 1)
  %20 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0), i32 1)
  %21 = call %dreamObj* @new_scope(%dreamObj* %20, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %21, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr9 = getelementptr %dreamObj, %dreamObj* %19, i32 0, i32 2
  %value_temp10 = load i8*, i8** %memberptr9, align 8
  %22 = bitcast i8* %value_temp10 to %dreamObj* (...)*
  %23 = call %dreamObj* (...) %22(%dreamObj* %new_scope, %dreamObj* %18)
  %24 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @51, i32 0, i32 0), %dreamObj* %23)
  store i32 38, i32* @line, align 4
  %25 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @52, i32 0, i32 0))
  %26 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @53, i32 0, i32 0), i32 1)
  %27 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @54, i32 0, i32 0), i32 0)
  %func_stack11 = alloca %dreamObj*, align 8
  %28 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %28, %dreamObj** %func_stack11, align 8
  %func12 = load %dreamObj*, %dreamObj** %func_stack11, align 8, !var_args !0
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %func12, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %29 = bitcast i8* %value_temp14 to %dreamObj* (...)*
  %30 = call %dreamObj* (...) %29(i32 2, %dreamObj* %25, %dreamObj* %27)
  store i32 39, i32* @line, align 4
  %31 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @55, i32 0, i32 0))
  %32 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @56, i32 0, i32 0), i32 1)
  %33 = call %dreamObj* @set_var(%dreamObj* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @57, i32 0, i32 0), %dreamObj* %31)
  store i32 40, i32* @line, align 4
  %34 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @58, i32 0, i32 0))
  %35 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @59, i32 0, i32 0), i32 1)
  %36 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @60, i32 0, i32 0), i32 0)
  %func_stack15 = alloca %dreamObj*, align 8
  %37 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %37, %dreamObj** %func_stack15, align 8
  %func16 = load %dreamObj*, %dreamObj** %func_stack15, align 8, !var_args !0
  %memberptr17 = getelementptr %dreamObj, %dreamObj* %func16, i32 0, i32 2
  %value_temp18 = load i8*, i8** %memberptr17, align 8
  %38 = bitcast i8* %value_temp18 to %dreamObj* (...)*
  %39 = call %dreamObj* (...) %38(i32 2, %dreamObj* %34, %dreamObj* %36)
  store i32 42, i32* @line, align 4
  %40 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @61, i32 0, i32 0), i32 1)
  %41 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @62, i32 0, i32 0), i32 0)
  %42 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), i32 1)
  %43 = call %dreamObj* @new_scope(%dreamObj* %42, i32 1)
  %scope_stack19 = alloca %dreamObj*, align 8
  store %dreamObj* %43, %dreamObj** %scope_stack19, align 8
  %new_scope20 = load %dreamObj*, %dreamObj** %scope_stack19, align 8
  %memberptr21 = getelementptr %dreamObj, %dreamObj* %41, i32 0, i32 2
  %value_temp22 = load i8*, i8** %memberptr21, align 8
  %44 = bitcast i8* %value_temp22 to %dreamObj* (...)*
  %45 = call %dreamObj* (...) %44(%dreamObj* %new_scope20)
  store i32 45, i32* @line, align 4
  %46 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @64, i32 0, i32 0))
  %47 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @65, i32 0, i32 0), i32 1)
  %48 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0), i32 1)
  %49 = call %dreamObj* @new_scope(%dreamObj* %48, i32 1)
  %scope_stack23 = alloca %dreamObj*, align 8
  store %dreamObj* %49, %dreamObj** %scope_stack23, align 8
  %new_scope24 = load %dreamObj*, %dreamObj** %scope_stack23, align 8
  %memberptr25 = getelementptr %dreamObj, %dreamObj* %47, i32 0, i32 2
  %value_temp26 = load i8*, i8** %memberptr25, align 8
  %50 = bitcast i8* %value_temp26 to %dreamObj* (...)*
  %51 = call %dreamObj* (...) %50(%dreamObj* %new_scope24, %dreamObj* %46)
  %52 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), %dreamObj* %51)
  store i32 47, i32* @line, align 4
  %53 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0), i32 1)
  %54 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @69, i32 0, i32 0), i32 0)
  %55 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @70, i32 0, i32 0), i32 1)
  %56 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @71, i32 0, i32 0), i32 0)
  store i32 46, i32* @line, align 4
  %func_stack27 = alloca %dreamObj*, align 8
  %57 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %57, %dreamObj** %func_stack27, align 8
  %func28 = load %dreamObj*, %dreamObj** %func_stack27, align 8, !var_args !0
  %memberptr29 = getelementptr %dreamObj, %dreamObj* %func28, i32 0, i32 2
  %value_temp30 = load i8*, i8** %memberptr29, align 8
  %58 = bitcast i8* %value_temp30 to %dreamObj* (...)*
  %59 = call %dreamObj* (...) %58(i32 2, %dreamObj* %54, %dreamObj* %56)
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

define %dreamObj* @List_obj(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 4, i32* @line, align 4
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1, i32 0, i32 0))
  %2 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2, i32 0, i32 0), %dreamObj* %1)
  store i32 13, i32* @line, align 4
  %func_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @aa to i8*))
  store %dreamObj* %3, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @7, i32 0, i32 0), %dreamObj* %func2)
  %5 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @8, i32 0, i32 0), %dreamObj* %new_scope)
  %func_stack3 = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %6, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func4, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %7 = bitcast i8* %value_temp to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(i32 0)
  %9 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @9, i32 0, i32 0), %dreamObj* %8)
  store i32 17, i32* @line, align 4
  %func_stack5 = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @cc to i8*))
  store %dreamObj* %10, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8
  %11 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @30, i32 0, i32 0), %dreamObj* %func6)
  %12 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), %dreamObj* %new_scope)
  %func_stack7 = alloca %dreamObj*, align 8
  %13 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %13, %dreamObj** %func_stack7, align 8
  %func8 = load %dreamObj*, %dreamObj** %func_stack7, align 8, !var_args !0
  %memberptr9 = getelementptr %dreamObj, %dreamObj* %func8, i32 0, i32 2
  %value_temp10 = load i8*, i8** %memberptr9, align 8
  %14 = bitcast i8* %value_temp10 to %dreamObj* (...)*
  %15 = call %dreamObj* (...) %14(i32 0)
  %16 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @32, i32 0, i32 0), %dreamObj* %15)
  %17 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @33, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @aa(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 14, i32* @line, align 4
  %0 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3, i32 0, i32 0))
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @4, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @5, i32 0, i32 0), i32 1)
  %func_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %3, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to %dreamObj* (...)*
  %5 = call %dreamObj* (...) %4(i32 3, %dreamObj* %0, %dreamObj* %1, %dreamObj* %2)
  %6 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @6, i32 0, i32 0))
  ret %dreamObj* %6
}

define %dreamObj* @cc(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 18, i32* @line, align 4
  %func_stack1 = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @hi to i8*))
  store %dreamObj* %0, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8
  %1 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @13, i32 0, i32 0), %dreamObj* %func2)
  %2 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), %dreamObj* %func)
  %func_stack3 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %3, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func4, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to %dreamObj* (...)*
  %5 = call %dreamObj* (...) %4(i32 0)
  %6 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @15, i32 0, i32 0), %dreamObj* %5)
  store i32 21, i32* @line, align 4
  %7 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0))
  %8 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @17, i32 0, i32 0), i32 1)
  %func_stack5 = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %9, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !0
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %10 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %11 = call %dreamObj* (...) %10(i32 2, %dreamObj* %7, %dreamObj* %8)
  store i32 22, i32* @line, align 4
  %12 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @18, i32 0, i32 0))
  %13 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i32 1)
  %func_stack9 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %14, %dreamObj** %func_stack9, align 8
  %func10 = load %dreamObj*, %dreamObj** %func_stack9, align 8, !var_args !0
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %func10, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %15 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %16 = call %dreamObj* (...) %15(i32 2, %dreamObj* %12, %dreamObj* %13)
  store i32 23, i32* @line, align 4
  %17 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0))
  %18 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), %dreamObj* %17)
  store i32 24, i32* @line, align 4
  %19 = call %dreamObj* @dreamInt(i32 45)
  %20 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @22, i32 0, i32 0), %dreamObj* %19)
  store i32 25, i32* @line, align 4
  %21 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @23, i32 0, i32 0), i32 1)
  %22 = call %dreamObj* @dreamInt(i32 45)
  %23 = call %dreamObj* @equals_c(%dreamObj* %21, %dreamObj* %22)
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %23, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %24 = bitcast i8* %value_temp14 to i32*
  %temp = load i32, i32* %24, align 4
  %25 = icmp eq i32 %temp, 1
  br i1 %25, label %then, label %ifcont

then:                                             ; preds = %EntryBlock
  %26 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %26, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 26, i32* @line, align 4
  %27 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @24, i32 0, i32 0))
  %func_stack15 = alloca %dreamObj*, align 8
  %28 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %28, %dreamObj** %func_stack15, align 8
  %func16 = load %dreamObj*, %dreamObj** %func_stack15, align 8, !var_args !0
  %memberptr17 = getelementptr %dreamObj, %dreamObj* %func16, i32 0, i32 2
  %value_temp18 = load i8*, i8** %memberptr17, align 8
  %29 = bitcast i8* %value_temp18 to %dreamObj* (...)*
  %30 = call %dreamObj* (...) %29(i32 1, %dreamObj* %27)
  store i32 27, i32* @line, align 4
  %31 = call %dreamObj* @dreamInt(i32 300)
  %32 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @25, i32 0, i32 0), %dreamObj* %31)
  br label %ifcont

ifcont:                                           ; preds = %then, %EntryBlock
  store i32 30, i32* @line, align 4
  %33 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @26, i32 0, i32 0), i32 1)
  %34 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i32 1)
  %35 = call %dreamObj* @new_scope(%dreamObj* %34, i32 1)
  %scope_stack19 = alloca %dreamObj*, align 8
  store %dreamObj* %35, %dreamObj** %scope_stack19, align 8
  %new_scope20 = load %dreamObj*, %dreamObj** %scope_stack19, align 8
  %memberptr21 = getelementptr %dreamObj, %dreamObj* %33, i32 0, i32 2
  %value_temp22 = load i8*, i8** %memberptr21, align 8
  %36 = bitcast i8* %value_temp22 to %dreamObj* (...)*
  %37 = call %dreamObj* (...) %36(%dreamObj* %new_scope20)
  store i32 31, i32* @line, align 4
  %38 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @28, i32 0, i32 0), i32 1)
  %func_stack23 = alloca %dreamObj*, align 8
  %39 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %39, %dreamObj** %func_stack23, align 8
  %func24 = load %dreamObj*, %dreamObj** %func_stack23, align 8, !var_args !0
  %memberptr25 = getelementptr %dreamObj, %dreamObj* %func24, i32 0, i32 2
  %value_temp26 = load i8*, i8** %memberptr25, align 8
  %40 = bitcast i8* %value_temp26 to %dreamObj* (...)*
  %41 = call %dreamObj* (...) %40(i32 1, %dreamObj* %38)
  %42 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @29, i32 0, i32 0))
  ret %dreamObj* %42
}

define %dreamObj* @hi(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 19, i32* @line, align 4
  %0 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0))
  %1 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i32 0, i32 0), %dreamObj* %0)
  %2 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @12, i32 0, i32 0))
  ret %dreamObj* %2
}

define %dreamObj* @List(%dreamObj* %scope, %dreamObj* %name, ...) !arg_names !2 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %name, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @37, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @38, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i32 1)
  %3 = call %dreamObj* @new_scope(%dreamObj* %2, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %3, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %1, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to %dreamObj* (...)*
  %5 = call %dreamObj* (...) %4(%dreamObj* %new_scope)
  %obj_stack = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamObject()
  store %dreamObj* %6, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  %7 = call %dreamObj* @set_parent(%dreamObj* %obj, %dreamObj* %5)
  %parent_stack = alloca %dreamObj*, align 8
  store %dreamObj* %7, %dreamObj** %parent_stack, align 8
  %new_parentee = load %dreamObj*, %dreamObj** %parent_stack, align 8
  %func_stack1 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*, %dreamObj*)* @merge to i8*))
  store %dreamObj* %8, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !3
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %9 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %10 = call %dreamObj* (...) %9(%dreamObj* %obj, %dreamObj* %func)
  store i32 8, i32* @line, align 4
  %11 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @40, i32 0, i32 0))
  %12 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @41, i32 0, i32 0), i32 1)
  %func_stack5 = alloca %dreamObj*, align 8
  %13 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %13, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !0
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %14 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %15 = call %dreamObj* (...) %14(i32 2, %dreamObj* %11, %dreamObj* %12)
  store i32 9, i32* @line, align 4
  %16 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @42, i32 0, i32 0), i32 1)
  %17 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @43, i32 0, i32 0), %dreamObj* %16)
  ret %dreamObj* %5
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{}
!2 = !{!"name"}
!3 = !{!"0"}
