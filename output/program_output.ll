; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [17 x i8] c"Generic greeting\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@3 = private unnamed_addr constant [8 x i8] c"get_msg\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@5 = private unnamed_addr constant [8 x i8] c"get_msg\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@7 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@11 = private unnamed_addr constant [10 x i8] c"Greet_obj\00", align 1
@12 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@13 = private unnamed_addr constant [10 x i8] c"Greet_obj\00", align 1
@14 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@15 = private unnamed_addr constant [6 x i8] c"Greet\00", align 1
@16 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@17 = private unnamed_addr constant [6 x i8] c"Greet\00", align 1
@18 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@19 = private unnamed_addr constant [17 x i8] c"GenericGreet_obj\00", align 1
@20 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@21 = private unnamed_addr constant [17 x i8] c"GenericGreet_obj\00", align 1
@22 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@23 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@24 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@25 = private unnamed_addr constant [13 x i8] c"GenericGreet\00", align 1
@26 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@27 = private unnamed_addr constant [6 x i8] c"Greet\00", align 1
@28 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@29 = private unnamed_addr constant [8 x i8] c"get_msg\00", align 1
@30 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@31 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@32 = private unnamed_addr constant [10 x i8] c"Hello_obj\00", align 1
@33 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@34 = private unnamed_addr constant [10 x i8] c"Hello_obj\00", align 1
@35 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@36 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@37 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@38 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@39 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@40 = private unnamed_addr constant [13 x i8] c"GenericGreet\00", align 1
@41 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@42 = private unnamed_addr constant [6 x i8] c"greet\00", align 1
@43 = private unnamed_addr constant [6 x i8] c"greet\00", align 1
@44 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@45 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@46 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@47 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@48 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@49 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@50 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@51 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 3, i32* @line, align 4
  %obj_stack1 = alloca %dreamObj*, align 8
  %1 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*)* @Greet_obj to i8*), %dreamObj** null)
  store %dreamObj* %1, %dreamObj** %obj_stack1, align 8
  %obj2 = load %dreamObj*, %dreamObj** %obj_stack1, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @11, i32 0, i32 0), %dreamObj* %obj2)
  %3 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), %dreamObj* %obj)
  %func_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @Greet to i8*))
  store %dreamObj* %4, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %5 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @15, i32 0, i32 0), %dreamObj* %func)
  %6 = call %dreamObj* @set_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), %dreamObj* %obj)
  store i32 15, i32* @line, align 4
  %obj_stack3 = alloca %dreamObj*, align 8
  %7 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*)* @GenericGreet_obj to i8*), %dreamObj** null)
  store %dreamObj* %7, %dreamObj** %obj_stack3, align 8
  %obj4 = load %dreamObj*, %dreamObj** %obj_stack3, align 8
  %8 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), %dreamObj* %obj4)
  %9 = call %dreamObj* @set_var(%dreamObj* %obj4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), %dreamObj* %obj)
  %func_stack5 = alloca %dreamObj*, align 8
  %10 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @GenericGreet to i8*))
  store %dreamObj* %10, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8
  %11 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @25, i32 0, i32 0), %dreamObj* %func6)
  %12 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), %dreamObj* %obj)
  store i32 23, i32* @line, align 4
  %obj_stack7 = alloca %dreamObj*, align 8
  %13 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*)* @Hello_obj to i8*), %dreamObj** null)
  store %dreamObj* %13, %dreamObj** %obj_stack7, align 8
  %obj8 = load %dreamObj*, %dreamObj** %obj_stack7, align 8
  %14 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), %dreamObj* %obj8)
  %15 = call %dreamObj* @set_var(%dreamObj* %obj8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @33, i32 0, i32 0), %dreamObj* %obj)
  %func_stack9 = alloca %dreamObj*, align 8
  %16 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @Hello to i8*))
  store %dreamObj* %16, %dreamObj** %func_stack9, align 8
  %func10 = load %dreamObj*, %dreamObj** %func_stack9, align 8
  %17 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @38, i32 0, i32 0), %dreamObj* %func10)
  %18 = call %dreamObj* @set_var(%dreamObj* %func10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), %dreamObj* %obj)
  store i32 35, i32* @line, align 4
  %19 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @40, i32 0, i32 0), i32 1)
  %20 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i32 1)
  %21 = call %dreamObj* @new_scope(%dreamObj* %20, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %21, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %19, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %22 = bitcast i8* %value_temp to %dreamObj* (...)*
  %23 = call %dreamObj* (...) %22(%dreamObj* %new_scope)
  %24 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @42, i32 0, i32 0), %dreamObj* %23)
  store i32 36, i32* @line, align 4
  %25 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @43, i32 0, i32 0), i32 1)
  %26 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @44, i32 0, i32 0), i32 0)
  %27 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), i32 1)
  %28 = call %dreamObj* @new_scope(%dreamObj* %27, i32 1)
  %scope_stack11 = alloca %dreamObj*, align 8
  store %dreamObj* %28, %dreamObj** %scope_stack11, align 8
  %new_scope12 = load %dreamObj*, %dreamObj** %scope_stack11, align 8
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %26, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %29 = bitcast i8* %value_temp14 to %dreamObj* (...)*
  %30 = call %dreamObj* (...) %29(%dreamObj* %new_scope12)
  store i32 38, i32* @line, align 4
  %31 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @46, i32 0, i32 0), i32 1)
  %32 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @47, i32 0, i32 0), i32 1)
  %33 = call %dreamObj* @new_scope(%dreamObj* %32, i32 1)
  %scope_stack15 = alloca %dreamObj*, align 8
  store %dreamObj* %33, %dreamObj** %scope_stack15, align 8
  %new_scope16 = load %dreamObj*, %dreamObj** %scope_stack15, align 8
  %memberptr17 = getelementptr %dreamObj, %dreamObj* %31, i32 0, i32 2
  %value_temp18 = load i8*, i8** %memberptr17, align 8
  %34 = bitcast i8* %value_temp18 to %dreamObj* (...)*
  %35 = call %dreamObj* (...) %34(%dreamObj* %new_scope16)
  %36 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @48, i32 0, i32 0), %dreamObj* %35)
  store i32 39, i32* @line, align 4
  %37 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @49, i32 0, i32 0), i32 1)
  %38 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @50, i32 0, i32 0), i32 0)
  %39 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @51, i32 0, i32 0), i32 1)
  %40 = call %dreamObj* @new_scope(%dreamObj* %39, i32 1)
  %scope_stack19 = alloca %dreamObj*, align 8
  store %dreamObj* %40, %dreamObj** %scope_stack19, align 8
  %new_scope20 = load %dreamObj*, %dreamObj** %scope_stack19, align 8
  %memberptr21 = getelementptr %dreamObj, %dreamObj* %38, i32 0, i32 2
  %value_temp22 = load i8*, i8** %memberptr21, align 8
  %41 = bitcast i8* %value_temp22 to %dreamObj* (...)*
  %42 = call %dreamObj* (...) %41(%dreamObj* %new_scope20)
  ret i32 0
}

declare void @print(i32, %dreamObj*, ...)

declare void @gc(%dreamObj*)

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

declare void @native_test(i32)

declare void @check(%dreamObj*, %dreamObj*)

define %dreamObj* @Greet_obj(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 4, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0))
  store %dreamObj* %1, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i32 0, i32 0), %dreamObj* %str)
  store i32 6, i32* @line, align 4
  %func_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @get_msg to i8*))
  store %dreamObj* %3, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), %dreamObj* %func2)
  %5 = call %dreamObj* @set_var(%dreamObj* %func2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), %dreamObj* %new_scope)
  store i32 10, i32* @line, align 4
  %func_stack3 = alloca %dreamObj*, align 8
  %6 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @show to i8*))
  store %dreamObj* %6, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8
  %7 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), %dreamObj* %func4)
  %8 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), %dreamObj* %new_scope)
  %9 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @get_msg(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 7, i32* @line, align 4
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0), i32 1)
  ret %dreamObj* %0
}

define %dreamObj* @show(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 11, i32* @line, align 4
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i32 1)
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* @new_scope(%dreamObj* %1, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %2, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %0, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %new_scope)
  %func_stack1 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %5, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !1
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %6 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %7 = call %dreamObj* (...) %6(i32 1, %dreamObj* %4)
  %str_stack = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @7, i32 0, i32 0))
  store %dreamObj* %8, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  ret %dreamObj* %str
}

define %dreamObj* @Greet(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i32 1)
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i32 1)
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

define %dreamObj* @GenericGreet_obj(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @17, i32 0, i32 0), i32 1)
  %func_stack1 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*)* @inherit to i8*))
  store %dreamObj* %2, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !2
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %new_scope, %dreamObj* %1)
  %5 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @GenericGreet(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i32 1)
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i32 1)
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
  store i32 18, i32* @line, align 4
  %10 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @23, i32 0, i32 0), i32 1)
  %11 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i32 1)
  %12 = call %dreamObj* @new_scope(%dreamObj* %11, i32 1)
  %scope_stack5 = alloca %dreamObj*, align 8
  store %dreamObj* %12, %dreamObj** %scope_stack5, align 8
  %new_scope6 = load %dreamObj*, %dreamObj** %scope_stack5, align 8
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %10, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %13 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %14 = call %dreamObj* (...) %13(%dreamObj* %new_scope6)
  ret %dreamObj* %4
}

define %dreamObj* @Hello_obj(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @27, i32 0, i32 0), i32 1)
  %func_stack1 = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamFunc(i8* bitcast (void (%dreamObj*)* @inherit to i8*))
  store %dreamObj* %2, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !2
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %3 = bitcast i8* %value_temp to %dreamObj* (...)*
  %4 = call %dreamObj* (...) %3(%dreamObj* %new_scope, %dreamObj* %1)
  store i32 29, i32* @line, align 4
  %func_stack3 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @get_msg.1 to i8*))
  store %dreamObj* %5, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8
  %6 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), %dreamObj* %func4)
  %7 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @30, i32 0, i32 0), %dreamObj* %new_scope)
  %8 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @31, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @get_msg.1(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 30, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @28, i32 0, i32 0))
  store %dreamObj* %0, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  ret %dreamObj* %str
}

define %dreamObj* @Hello(%dreamObj* %scope) !arg_names !0 {
EntryBlock:
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @34, i32 0, i32 0), i32 1)
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @35, i32 0, i32 0), i32 1)
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
  store i32 26, i32* @line, align 4
  %10 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @36, i32 0, i32 0), i32 1)
  %11 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @37, i32 0, i32 0), i32 1)
  %12 = call %dreamObj* @new_scope(%dreamObj* %11, i32 1)
  %scope_stack5 = alloca %dreamObj*, align 8
  store %dreamObj* %12, %dreamObj** %scope_stack5, align 8
  %new_scope6 = load %dreamObj*, %dreamObj** %scope_stack5, align 8
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %10, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %13 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %14 = call %dreamObj* (...) %13(%dreamObj* %new_scope6)
  ret %dreamObj* %4
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{}
!1 = !{!"1"}
!2 = !{!"0"}
