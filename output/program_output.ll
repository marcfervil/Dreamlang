; ModuleID = 'maindream'
source_filename = "maindream"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin20.1.0"

%dreamObj = type { i8*, %dreamObj**, i8*, %dreamObj*, %dreamObj**, %dreamObj**, %dreamObj*, i32, [100 x %dreamObj**] }

@nullDream = external global %dreamObj*
@line = external global i32
@0 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@5 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@6 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@7 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@10 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@11 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@12 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@13 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@14 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@15 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@16 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@17 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@18 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@19 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@20 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@21 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@22 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@23 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@24 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@25 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@26 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@27 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@28 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@29 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@30 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@31 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@32 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@33 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@34 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@35 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@36 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@37 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@38 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@39 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@40 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@41 = private unnamed_addr constant [10 x i8] c"World_obj\00", align 1
@42 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@43 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@44 = private unnamed_addr constant [10 x i8] c"World_obj\00", align 1
@45 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@46 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@47 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@48 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@49 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@50 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@51 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@52 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@53 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@54 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@55 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@56 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@57 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@58 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@59 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@60 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@61 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@62 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@63 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@64 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@65 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@66 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@67 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@68 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@69 = private unnamed_addr constant [2 x i8] c".\00", align 1
@70 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@71 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@72 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@73 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@74 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@75 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@76 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@77 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@78 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@79 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@80 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@81 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@82 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@83 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@84 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@85 = private unnamed_addr constant [11 x i8] c"Player_obj\00", align 1
@86 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@87 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@88 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@89 = private unnamed_addr constant [11 x i8] c"Player_obj\00", align 1
@90 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@91 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@92 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@93 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@94 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@95 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@96 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@97 = private unnamed_addr constant [7 x i8] c"Player\00", align 1
@98 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@99 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@100 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@101 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@102 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@103 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@104 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@105 = private unnamed_addr constant [7 x i8] c"Player\00", align 1
@106 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@107 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@108 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@109 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@110 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@111 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@112 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@113 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@114 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@115 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@116 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@117 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@118 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@119 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@120 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@121 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@122 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@123 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@124 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@125 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@126 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@127 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@128 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@129 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@130 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@131 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@132 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@133 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@134 = private unnamed_addr constant [13 x i8] c"handle_input\00", align 1
@135 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@136 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@137 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@138 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@139 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@140 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@141 = private unnamed_addr constant [13 x i8] c"handle_input\00", align 1
@142 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@143 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@144 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@145 = private unnamed_addr constant [32 x i8] c"<TODO: implement undefined ref>\00", align 1
@146 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@147 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@148 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@149 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@150 = private unnamed_addr constant [9 x i8] c"Game_obj\00", align 1
@151 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@152 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@153 = private unnamed_addr constant [9 x i8] c"Game_obj\00", align 1
@154 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@155 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@156 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@157 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@158 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@159 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@160 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@161 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@162 = private unnamed_addr constant [9 x i8] c"@context\00", align 1
@163 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@164 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@165 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@166 = private unnamed_addr constant [9 x i8] c"@context\00", align 1

define i32 @main() {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %obj_stack = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamObject()
  store %dreamObj* %0, %dreamObj** %obj_stack, align 8
  %obj = load %dreamObj*, %dreamObj** %obj_stack, align 8
  store i32 2, i32* @line, align 4
  %obj_stack1 = alloca %dreamObj*, align 8
  %1 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @World_obj to i8*), %dreamObj** null)
  store %dreamObj* %1, %dreamObj** %obj_stack1, align 8
  %obj2 = load %dreamObj*, %dreamObj** %obj_stack1, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @41, i32 0, i32 0), %dreamObj* %obj2)
  %3 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @42, i32 0, i32 0), %dreamObj* %obj)
  %func_stack = alloca %dreamObj*, align 8
  %4 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %4, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %5 = bitcast i8* %value_temp to %dreamObj* (...)*
  %6 = call %dreamObj* (...) %5(i32 0)
  %7 = call %dreamObj* @set_var(%dreamObj* %obj2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @43, i32 0, i32 0), %dreamObj* %6)
  %func_stack3 = alloca %dreamObj*, align 8
  %8 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @World to i8*))
  store %dreamObj* %8, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8
  %9 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @77, i32 0, i32 0), %dreamObj* %func4)
  %10 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), %dreamObj* %obj)
  %func_stack5 = alloca %dreamObj*, align 8
  %11 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %11, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !0
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %12 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %13 = call %dreamObj* (...) %12(i32 0)
  %14 = call %dreamObj* @set_var(%dreamObj* %func4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @79, i32 0, i32 0), %dreamObj* %13)
  store i32 35, i32* @line, align 4
  %obj_stack9 = alloca %dreamObj*, align 8
  %15 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @Player_obj to i8*), %dreamObj** null)
  store %dreamObj* %15, %dreamObj** %obj_stack9, align 8
  %obj10 = load %dreamObj*, %dreamObj** %obj_stack9, align 8
  %16 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @85, i32 0, i32 0), %dreamObj* %obj10)
  %17 = call %dreamObj* @set_var(%dreamObj* %obj10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @86, i32 0, i32 0), %dreamObj* %obj)
  %func_stack11 = alloca %dreamObj*, align 8
  %18 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %18, %dreamObj** %func_stack11, align 8
  %func12 = load %dreamObj*, %dreamObj** %func_stack11, align 8, !var_args !0
  %memberptr13 = getelementptr %dreamObj, %dreamObj* %func12, i32 0, i32 2
  %value_temp14 = load i8*, i8** %memberptr13, align 8
  %19 = bitcast i8* %value_temp14 to %dreamObj* (...)*
  %20 = call %dreamObj* (...) %19(i32 0)
  %21 = call %dreamObj* @set_var(%dreamObj* %obj10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @87, i32 0, i32 0), %dreamObj* %20)
  %func_stack15 = alloca %dreamObj*, align 8
  %22 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, ...)* @Player to i8*))
  store %dreamObj* %22, %dreamObj** %func_stack15, align 8
  %func16 = load %dreamObj*, %dreamObj** %func_stack15, align 8
  %23 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @97, i32 0, i32 0), %dreamObj* %func16)
  %24 = call %dreamObj* @set_var(%dreamObj* %func16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @98, i32 0, i32 0), %dreamObj* %obj)
  %str_stack = alloca %dreamObj*, align 8
  %25 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @99, i32 0, i32 0))
  store %dreamObj* %25, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack17 = alloca %dreamObj*, align 8
  %26 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %26, %dreamObj** %func_stack17, align 8
  %func18 = load %dreamObj*, %dreamObj** %func_stack17, align 8, !var_args !0
  %memberptr19 = getelementptr %dreamObj, %dreamObj* %func18, i32 0, i32 2
  %value_temp20 = load i8*, i8** %memberptr19, align 8
  %27 = bitcast i8* %value_temp20 to %dreamObj* (...)*
  %28 = call %dreamObj* (...) %27(i32 1, %dreamObj* %str)
  %29 = call %dreamObj* @set_var(%dreamObj* %func16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @100, i32 0, i32 0), %dreamObj* %28)
  store i32 45, i32* @line, align 4
  %obj_stack21 = alloca %dreamObj*, align 8
  %30 = call %dreamObj* (i8*, ...) @make_dream(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @Game_obj to i8*), %dreamObj** null)
  store %dreamObj* %30, %dreamObj** %obj_stack21, align 8
  %obj22 = load %dreamObj*, %dreamObj** %obj_stack21, align 8
  %31 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @150, i32 0, i32 0), %dreamObj* %obj22)
  %32 = call %dreamObj* @set_var(%dreamObj* %obj22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @151, i32 0, i32 0), %dreamObj* %obj)
  %func_stack23 = alloca %dreamObj*, align 8
  %33 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %33, %dreamObj** %func_stack23, align 8
  %func24 = load %dreamObj*, %dreamObj** %func_stack23, align 8, !var_args !0
  %memberptr25 = getelementptr %dreamObj, %dreamObj* %func24, i32 0, i32 2
  %value_temp26 = load i8*, i8** %memberptr25, align 8
  %34 = bitcast i8* %value_temp26 to %dreamObj* (...)*
  %35 = call %dreamObj* (...) %34(i32 0)
  %36 = call %dreamObj* @set_var(%dreamObj* %obj22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @152, i32 0, i32 0), %dreamObj* %35)
  %func_stack27 = alloca %dreamObj*, align 8
  %37 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @Game to i8*))
  store %dreamObj* %37, %dreamObj** %func_stack27, align 8
  %func28 = load %dreamObj*, %dreamObj** %func_stack27, align 8
  %38 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @158, i32 0, i32 0), %dreamObj* %func28)
  %39 = call %dreamObj* @set_var(%dreamObj* %func28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @159, i32 0, i32 0), %dreamObj* %obj)
  %func_stack29 = alloca %dreamObj*, align 8
  %40 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %40, %dreamObj** %func_stack29, align 8
  %func30 = load %dreamObj*, %dreamObj** %func_stack29, align 8, !var_args !0
  %memberptr31 = getelementptr %dreamObj, %dreamObj* %func30, i32 0, i32 2
  %value_temp32 = load i8*, i8** %memberptr31, align 8
  %41 = bitcast i8* %value_temp32 to %dreamObj* (...)*
  %42 = call %dreamObj* (...) %41(i32 0)
  %43 = call %dreamObj* @set_var(%dreamObj* %func28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @160, i32 0, i32 0), %dreamObj* %42)
  store i32 76, i32* @line, align 4
  %44 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @161, i32 0, i32 0), i32 1)
  %45 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @162, i32 0, i32 0), i32 1)
  %46 = call %dreamObj* @new_scope(%dreamObj* %45, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %46, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr33 = getelementptr %dreamObj, %dreamObj* %44, i32 0, i32 2
  %value_temp34 = load i8*, i8** %memberptr33, align 8
  %47 = bitcast i8* %value_temp34 to %dreamObj* (...)*
  %48 = call %dreamObj* (...) %47(%dreamObj* %new_scope)
  %49 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @163, i32 0, i32 0), %dreamObj* %48)
  store i32 77, i32* @line, align 4
  %50 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @164, i32 0, i32 0), i32 1)
  %51 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @165, i32 0, i32 0), i32 0)
  %52 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @166, i32 0, i32 0), i32 1)
  %53 = call %dreamObj* @new_scope(%dreamObj* %52, i32 1)
  %scope_stack35 = alloca %dreamObj*, align 8
  store %dreamObj* %53, %dreamObj** %scope_stack35, align 8
  %new_scope36 = load %dreamObj*, %dreamObj** %scope_stack35, align 8
  %memberptr37 = getelementptr %dreamObj, %dreamObj* %51, i32 0, i32 2
  %value_temp38 = load i8*, i8** %memberptr37, align 8
  %54 = bitcast i8* %value_temp38 to %dreamObj* (...)*
  %55 = call %dreamObj* (...) %54(%dreamObj* %new_scope36)
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

declare void @apply_vargs(%dreamObj*, %dreamObj*, %dreamObj*)

declare void @native_test(i32)

declare void @check(%dreamObj*, %dreamObj*)

declare void @input()

declare void @clear()

define %dreamObj* @World_obj(%dreamObj* %scope, ...) !arg_names !1 {
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
  %int_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamInt(i32 10)
  store %dreamObj* %1, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @0, i32 0, i32 0), %dreamObj* %int)
  store i32 5, i32* @line, align 4
  %int_stack1 = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamInt(i32 20)
  store %dreamObj* %3, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0), %dreamObj* %int2)
  store i32 6, i32* @line, align 4
  %func_stack3 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %5, %dreamObj** %func_stack3, align 8
  %func4 = load %dreamObj*, %dreamObj** %func_stack3, align 8, !var_args !0
  %memberptr = getelementptr %dreamObj, %dreamObj* %func4, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %6 = bitcast i8* %value_temp to %dreamObj* (...)*
  %7 = call %dreamObj* (...) %6(i32 0)
  %8 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2, i32 0, i32 0), %dreamObj* %7)
  store i32 21, i32* @line, align 4
  %func_stack5 = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @show to i8*))
  store %dreamObj* %9, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8
  %10 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @37, i32 0, i32 0), %dreamObj* %func6)
  %11 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @38, i32 0, i32 0), %dreamObj* %new_scope)
  %func_stack7 = alloca %dreamObj*, align 8
  %12 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %12, %dreamObj** %func_stack7, align 8
  %func8 = load %dreamObj*, %dreamObj** %func_stack7, align 8, !var_args !0
  %memberptr9 = getelementptr %dreamObj, %dreamObj* %func8, i32 0, i32 2
  %value_temp10 = load i8*, i8** %memberptr9, align 8
  %13 = bitcast i8* %value_temp10 to %dreamObj* (...)*
  %14 = call %dreamObj* (...) %13(i32 0)
  %15 = call %dreamObj* @set_var(%dreamObj* %func6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @39, i32 0, i32 0), %dreamObj* %14)
  %16 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @40, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @show(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 22, i32* @line, align 4
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i32 1)
  %func_stack1 = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @count to i8*))
  store %dreamObj* %1, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !2
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %2 = bitcast i8* %value_temp to %dreamObj* (...)*
  %3 = call %dreamObj* (...) %2(%dreamObj* %0)
  %4 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), i32 1)
  %5 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i32 1)
  %6 = call %dreamObj* @new_scope(%dreamObj* %5, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %6, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %4, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %7 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(%dreamObj* %new_scope)
  %9 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i32 1)
  %10 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i32 1)
  %11 = call %dreamObj* @new_scope(%dreamObj* %10, i32 1)
  %scope_stack5 = alloca %dreamObj*, align 8
  store %dreamObj* %11, %dreamObj** %scope_stack5, align 8
  %new_scope6 = load %dreamObj*, %dreamObj** %scope_stack5, align 8
  %12 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack7 = alloca %dreamObj*, align 8
  store %dreamObj* %12, %dreamObj** %scope_stack7, align 8
  %new_scope8 = load %dreamObj*, %dreamObj** %scope_stack7, align 8
  %null_dream9 = load %dreamObj*, %dreamObj** @nullDream, align 8
  br label %for_start

for_start:                                        ; preds = %forcont, %EntryBlock
  %memberptr10 = getelementptr %dreamObj, %dreamObj* %9, i32 0, i32 2
  %value_temp11 = load i8*, i8** %memberptr10, align 8
  %13 = bitcast i8* %value_temp11 to %dreamObj* (...)*
  %14 = call %dreamObj* (...) %13(%dreamObj* %new_scope6)
  %15 = call %dreamObj* @set_var(%dreamObj* %new_scope8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0), %dreamObj* %14)
  %16 = icmp ne %dreamObj* %14, %null_dream9
  br i1 %16, label %then, label %forcont57

then:                                             ; preds = %for_start
  store i32 23, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %17 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @9, i32 0, i32 0))
  store %dreamObj* %17, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %18 = call %dreamObj* @set_var(%dreamObj* %new_scope8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0), %dreamObj* %str)
  store i32 24, i32* @line, align 4
  %19 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @11, i32 0, i32 0), i32 1)
  %func_stack12 = alloca %dreamObj*, align 8
  %20 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @count to i8*))
  store %dreamObj* %20, %dreamObj** %func_stack12, align 8
  %func13 = load %dreamObj*, %dreamObj** %func_stack12, align 8, !var_args !2
  %memberptr14 = getelementptr %dreamObj, %dreamObj* %func13, i32 0, i32 2
  %value_temp15 = load i8*, i8** %memberptr14, align 8
  %21 = bitcast i8* %value_temp15 to %dreamObj* (...)*
  %22 = call %dreamObj* (...) %21(%dreamObj* %19)
  %23 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i32 1)
  %24 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i32 1)
  %25 = call %dreamObj* @new_scope(%dreamObj* %24, i32 1)
  %scope_stack16 = alloca %dreamObj*, align 8
  store %dreamObj* %25, %dreamObj** %scope_stack16, align 8
  %new_scope17 = load %dreamObj*, %dreamObj** %scope_stack16, align 8
  %memberptr18 = getelementptr %dreamObj, %dreamObj* %23, i32 0, i32 2
  %value_temp19 = load i8*, i8** %memberptr18, align 8
  %26 = bitcast i8* %value_temp19 to %dreamObj* (...)*
  %27 = call %dreamObj* (...) %26(%dreamObj* %new_scope17)
  %28 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i32 1)
  %29 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i32 1)
  %30 = call %dreamObj* @new_scope(%dreamObj* %29, i32 1)
  %scope_stack20 = alloca %dreamObj*, align 8
  store %dreamObj* %30, %dreamObj** %scope_stack20, align 8
  %new_scope21 = load %dreamObj*, %dreamObj** %scope_stack20, align 8
  %31 = call %dreamObj* @new_scope(%dreamObj* %new_scope8, i32 1)
  %scope_stack22 = alloca %dreamObj*, align 8
  store %dreamObj* %31, %dreamObj** %scope_stack22, align 8
  %new_scope23 = load %dreamObj*, %dreamObj** %scope_stack22, align 8
  %null_dream24 = load %dreamObj*, %dreamObj** @nullDream, align 8
  br label %for_start25

for_start25:                                      ; preds = %ifcont, %then38, %then
  %memberptr26 = getelementptr %dreamObj, %dreamObj* %28, i32 0, i32 2
  %value_temp27 = load i8*, i8** %memberptr26, align 8
  %32 = bitcast i8* %value_temp27 to %dreamObj* (...)*
  %33 = call %dreamObj* (...) %32(%dreamObj* %new_scope21)
  %34 = call %dreamObj* @set_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @16, i32 0, i32 0), %dreamObj* %33)
  %35 = icmp ne %dreamObj* %33, %null_dream24
  br i1 %35, label %then28, label %forcont

then28:                                           ; preds = %for_start25
  store i32 25, i32* @line, align 4
  %36 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @17, i32 0, i32 0), i32 1)
  %37 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @18, i32 0, i32 0), i32 1)
  %38 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @19, i32 0, i32 0), i32 0)
  %39 = call %dreamObj* @equals_c(%dreamObj* %36, %dreamObj* %38)
  %40 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @20, i32 0, i32 0), i32 1)
  %41 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i32 1)
  %42 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @22, i32 0, i32 0), i32 0)
  %43 = call %dreamObj* @equals_c(%dreamObj* %40, %dreamObj* %42)
  %memberptr29 = getelementptr %dreamObj, %dreamObj* %39, i32 0, i32 2
  %value_temp30 = load i8*, i8** %memberptr29, align 8
  %44 = bitcast i8* %value_temp30 to i32*
  %temp = load i32, i32* %44, align 4
  %memberptr31 = getelementptr %dreamObj, %dreamObj* %43, i32 0, i32 2
  %value_temp32 = load i8*, i8** %memberptr31, align 8
  %45 = bitcast i8* %value_temp32 to i32*
  %temp33 = load i32, i32* %45, align 4
  %and_result = alloca i32, align 4
  store i32 0, i32* %and_result, align 4
  %46 = icmp eq i32 %temp, 1
  store i1 %46, i32* %and_result, align 1
  br i1 %46, label %and_if, label %and_then
  br label %and_if

and_if:                                           ; preds = %then28, %then28
  %47 = icmp eq i32 %temp33, 1
  store i1 %47, i32* %and_result, align 1
  br label %and_then

and_then:                                         ; preds = %and_if, %then28
  %and_result34 = load i32, i32* %and_result, align 4
  %bool_stack = alloca %dreamObj*, align 8
  %48 = call %dreamObj* @dreamBool(i32 %and_result34)
  store %dreamObj* %48, %dreamObj** %bool_stack, align 8
  %bool = load %dreamObj*, %dreamObj** %bool_stack, align 8
  %memberptr35 = getelementptr %dreamObj, %dreamObj* %bool, i32 0, i32 2
  %value_temp36 = load i8*, i8** %memberptr35, align 8
  %49 = bitcast i8* %value_temp36 to i32*
  %temp37 = load i32, i32* %49, align 4
  %50 = icmp eq i32 %temp37, 1
  br i1 %50, label %then38, label %ifcont

then38:                                           ; preds = %and_then
  %51 = call %dreamObj* @new_scope(%dreamObj* %new_scope23, i32 1)
  %scope_stack39 = alloca %dreamObj*, align 8
  store %dreamObj* %51, %dreamObj** %scope_stack39, align 8
  %new_scope40 = load %dreamObj*, %dreamObj** %scope_stack39, align 8
  store i32 26, i32* @line, align 4
  %52 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @23, i32 0, i32 0), i32 1)
  %str_stack41 = alloca %dreamObj*, align 8
  %53 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @24, i32 0, i32 0))
  store %dreamObj* %53, %dreamObj** %str_stack41, align 8
  %str42 = load %dreamObj*, %dreamObj** %str_stack41, align 8
  %54 = call %dreamObj* @add_c(%dreamObj* %52, %dreamObj* %str42)
  %55 = call %dreamObj* @set_var(%dreamObj* %new_scope40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @25, i32 0, i32 0), %dreamObj* %54)
  store i32 27, i32* @line, align 4
  br label %for_start25

ifcont:                                           ; preds = %and_then
  store i32 28, i32* @line, align 4
  %56 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0), i32 1)
  %57 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @27, i32 0, i32 0), i32 1)
  %58 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @28, i32 0, i32 0), i32 1)
  %59 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @29, i32 0, i32 0), i32 1)
  %60 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @30, i32 0, i32 0), i32 1)
  %61 = call %dreamObj* @new_scope(%dreamObj* %60, i32 1)
  %scope_stack43 = alloca %dreamObj*, align 8
  store %dreamObj* %61, %dreamObj** %scope_stack43, align 8
  %new_scope44 = load %dreamObj*, %dreamObj** %scope_stack43, align 8
  %memberptr45 = getelementptr %dreamObj, %dreamObj* %58, i32 0, i32 2
  %value_temp46 = load i8*, i8** %memberptr45, align 8
  %62 = bitcast i8* %value_temp46 to %dreamObj* (...)*
  %63 = call %dreamObj* (...) %62(%dreamObj* %new_scope44, %dreamObj* %59)
  %64 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @31, i32 0, i32 0), i32 1)
  %65 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @32, i32 0, i32 0), i32 1)
  %66 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @33, i32 0, i32 0), i32 1)
  %67 = call %dreamObj* @new_scope(%dreamObj* %66, i32 1)
  %scope_stack47 = alloca %dreamObj*, align 8
  store %dreamObj* %67, %dreamObj** %scope_stack47, align 8
  %new_scope48 = load %dreamObj*, %dreamObj** %scope_stack47, align 8
  %memberptr49 = getelementptr %dreamObj, %dreamObj* %64, i32 0, i32 2
  %value_temp50 = load i8*, i8** %memberptr49, align 8
  %68 = bitcast i8* %value_temp50 to %dreamObj* (...)*
  %69 = call %dreamObj* (...) %68(%dreamObj* %new_scope48, %dreamObj* %65)
  %70 = call %dreamObj* @add_c(%dreamObj* %56, %dreamObj* %69)
  %71 = call %dreamObj* @set_var(%dreamObj* %new_scope23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @34, i32 0, i32 0), %dreamObj* %70)
  %null_dream51 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %72 = icmp ne %dreamObj* %33, %null_dream51
  br i1 %72, label %for_start25, label %forcont

forcont:                                          ; preds = %ifcont, %for_start25
  store i32 30, i32* @line, align 4
  %73 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @35, i32 0, i32 0), i32 1)
  %func_stack52 = alloca %dreamObj*, align 8
  %74 = call %dreamObj* @dreamFunc(i8* bitcast (void (i32, %dreamObj*, ...)* @print to i8*))
  store %dreamObj* %74, %dreamObj** %func_stack52, align 8
  %func53 = load %dreamObj*, %dreamObj** %func_stack52, align 8, !var_args !0
  %memberptr54 = getelementptr %dreamObj, %dreamObj* %func53, i32 0, i32 2
  %value_temp55 = load i8*, i8** %memberptr54, align 8
  %75 = bitcast i8* %value_temp55 to %dreamObj* (...)*
  %76 = call %dreamObj* (...) %75(i32 1, %dreamObj* %73)
  %null_dream56 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %77 = icmp ne %dreamObj* %14, %null_dream56
  br i1 %77, label %for_start, label %forcont57

forcont57:                                        ; preds = %forcont, %for_start
  %str_stack58 = alloca %dreamObj*, align 8
  %78 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @36, i32 0, i32 0))
  store %dreamObj* %78, %dreamObj** %str_stack58, align 8
  %str59 = load %dreamObj*, %dreamObj** %str_stack58, align 8
  ret %dreamObj* %str59
}

define %dreamObj* @World(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @44, i32 0, i32 0), i32 1)
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), i32 1)
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
  store i32 9, i32* @line, align 4
  %10 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @46, i32 0, i32 0), i32 1)
  %func_stack5 = alloca %dreamObj*, align 8
  %11 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @count to i8*))
  store %dreamObj* %11, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !2
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %12 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %13 = call %dreamObj* (...) %12(%dreamObj* %10)
  %14 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @47, i32 0, i32 0), i32 1)
  %15 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @48, i32 0, i32 0), i32 1)
  %16 = call %dreamObj* @new_scope(%dreamObj* %15, i32 1)
  %scope_stack9 = alloca %dreamObj*, align 8
  store %dreamObj* %16, %dreamObj** %scope_stack9, align 8
  %new_scope10 = load %dreamObj*, %dreamObj** %scope_stack9, align 8
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %14, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %17 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %18 = call %dreamObj* (...) %17(%dreamObj* %new_scope10)
  %19 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @49, i32 0, i32 0), i32 1)
  %20 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0), i32 1)
  %21 = call %dreamObj* @new_scope(%dreamObj* %20, i32 1)
  %scope_stack13 = alloca %dreamObj*, align 8
  store %dreamObj* %21, %dreamObj** %scope_stack13, align 8
  %new_scope14 = load %dreamObj*, %dreamObj** %scope_stack13, align 8
  %22 = call %dreamObj* @new_scope(%dreamObj* %obj, i32 1)
  %scope_stack15 = alloca %dreamObj*, align 8
  store %dreamObj* %22, %dreamObj** %scope_stack15, align 8
  %new_scope16 = load %dreamObj*, %dreamObj** %scope_stack15, align 8
  %null_dream17 = load %dreamObj*, %dreamObj** @nullDream, align 8
  br label %for_start

for_start:                                        ; preds = %forcont, %EntryBlock
  %memberptr18 = getelementptr %dreamObj, %dreamObj* %19, i32 0, i32 2
  %value_temp19 = load i8*, i8** %memberptr18, align 8
  %23 = bitcast i8* %value_temp19 to %dreamObj* (...)*
  %24 = call %dreamObj* (...) %23(%dreamObj* %new_scope14)
  %25 = call %dreamObj* @set_var(%dreamObj* %new_scope16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @51, i32 0, i32 0), %dreamObj* %24)
  %26 = icmp ne %dreamObj* %24, %null_dream17
  br i1 %26, label %then, label %forcont115

then:                                             ; preds = %for_start
  store i32 10, i32* @line, align 4
  %func_stack20 = alloca %dreamObj*, align 8
  %27 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %27, %dreamObj** %func_stack20, align 8
  %func21 = load %dreamObj*, %dreamObj** %func_stack20, align 8, !var_args !0
  %memberptr22 = getelementptr %dreamObj, %dreamObj* %func21, i32 0, i32 2
  %value_temp23 = load i8*, i8** %memberptr22, align 8
  %28 = bitcast i8* %value_temp23 to %dreamObj* (...)*
  %29 = call %dreamObj* (...) %28(i32 0)
  %30 = call %dreamObj* @set_var(%dreamObj* %new_scope16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @52, i32 0, i32 0), %dreamObj* %29)
  store i32 11, i32* @line, align 4
  %31 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @53, i32 0, i32 0), i32 1)
  %func_stack24 = alloca %dreamObj*, align 8
  %32 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*)* @count to i8*))
  store %dreamObj* %32, %dreamObj** %func_stack24, align 8
  %func25 = load %dreamObj*, %dreamObj** %func_stack24, align 8, !var_args !2
  %memberptr26 = getelementptr %dreamObj, %dreamObj* %func25, i32 0, i32 2
  %value_temp27 = load i8*, i8** %memberptr26, align 8
  %33 = bitcast i8* %value_temp27 to %dreamObj* (...)*
  %34 = call %dreamObj* (...) %33(%dreamObj* %31)
  %35 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @54, i32 0, i32 0), i32 1)
  %36 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @55, i32 0, i32 0), i32 1)
  %37 = call %dreamObj* @new_scope(%dreamObj* %36, i32 1)
  %scope_stack28 = alloca %dreamObj*, align 8
  store %dreamObj* %37, %dreamObj** %scope_stack28, align 8
  %new_scope29 = load %dreamObj*, %dreamObj** %scope_stack28, align 8
  %memberptr30 = getelementptr %dreamObj, %dreamObj* %35, i32 0, i32 2
  %value_temp31 = load i8*, i8** %memberptr30, align 8
  %38 = bitcast i8* %value_temp31 to %dreamObj* (...)*
  %39 = call %dreamObj* (...) %38(%dreamObj* %new_scope29)
  %40 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @56, i32 0, i32 0), i32 1)
  %41 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), i32 1)
  %42 = call %dreamObj* @new_scope(%dreamObj* %41, i32 1)
  %scope_stack32 = alloca %dreamObj*, align 8
  store %dreamObj* %42, %dreamObj** %scope_stack32, align 8
  %new_scope33 = load %dreamObj*, %dreamObj** %scope_stack32, align 8
  %43 = call %dreamObj* @new_scope(%dreamObj* %new_scope16, i32 1)
  %scope_stack34 = alloca %dreamObj*, align 8
  store %dreamObj* %43, %dreamObj** %scope_stack34, align 8
  %new_scope35 = load %dreamObj*, %dreamObj** %scope_stack34, align 8
  %null_dream36 = load %dreamObj*, %dreamObj** @nullDream, align 8
  br label %for_start37

for_start37:                                      ; preds = %ifcont, %then96, %then
  %memberptr38 = getelementptr %dreamObj, %dreamObj* %40, i32 0, i32 2
  %value_temp39 = load i8*, i8** %memberptr38, align 8
  %44 = bitcast i8* %value_temp39 to %dreamObj* (...)*
  %45 = call %dreamObj* (...) %44(%dreamObj* %new_scope33)
  %46 = call %dreamObj* @set_var(%dreamObj* %new_scope35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @58, i32 0, i32 0), %dreamObj* %45)
  %47 = icmp ne %dreamObj* %45, %null_dream36
  br i1 %47, label %then40, label %forcont

then40:                                           ; preds = %for_start37
  store i32 12, i32* @line, align 4
  %48 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @59, i32 0, i32 0), i32 1)
  %int_stack = alloca %dreamObj*, align 8
  %49 = call %dreamObj* @dreamInt(i32 0)
  store %dreamObj* %49, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %50 = call %dreamObj* @equals_c(%dreamObj* %48, %dreamObj* %int)
  %51 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @60, i32 0, i32 0), i32 1)
  %52 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @61, i32 0, i32 0), i32 1)
  %int_stack41 = alloca %dreamObj*, align 8
  %53 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %53, %dreamObj** %int_stack41, align 8
  %int42 = load %dreamObj*, %dreamObj** %int_stack41, align 8
  %memberptr43 = getelementptr %dreamObj, %dreamObj* %52, i32 0, i32 2
  %value_temp44 = load i8*, i8** %memberptr43, align 8
  %54 = bitcast i8* %value_temp44 to i32*
  %temp = load i32, i32* %54, align 4
  %memberptr45 = getelementptr %dreamObj, %dreamObj* %int42, i32 0, i32 2
  %value_temp46 = load i8*, i8** %memberptr45, align 8
  %55 = bitcast i8* %value_temp46 to i32*
  %temp47 = load i32, i32* %55, align 4
  %56 = sub i32 %temp, %temp47
  %int_stack48 = alloca %dreamObj*, align 8
  %57 = call %dreamObj* @dreamInt(i32 %56)
  store %dreamObj* %57, %dreamObj** %int_stack48, align 8
  %int49 = load %dreamObj*, %dreamObj** %int_stack48, align 8
  %58 = call %dreamObj* @equals_c(%dreamObj* %51, %dreamObj* %int49)
  %memberptr50 = getelementptr %dreamObj, %dreamObj* %50, i32 0, i32 2
  %value_temp51 = load i8*, i8** %memberptr50, align 8
  %59 = bitcast i8* %value_temp51 to i32*
  %temp52 = load i32, i32* %59, align 4
  %memberptr53 = getelementptr %dreamObj, %dreamObj* %58, i32 0, i32 2
  %value_temp54 = load i8*, i8** %memberptr53, align 8
  %60 = bitcast i8* %value_temp54 to i32*
  %temp55 = load i32, i32* %60, align 4
  %and_result = alloca i32, align 4
  store i32 0, i32* %and_result, align 4
  %61 = icmp eq i32 %temp52, 1
  store i1 %61, i32* %and_result, align 1
  br i1 %61, label %and_then, label %and_if
  br label %and_if

and_if:                                           ; preds = %then40, %then40
  %62 = icmp eq i32 %temp55, 1
  store i1 %62, i32* %and_result, align 1
  br label %and_then

and_then:                                         ; preds = %and_if, %then40
  %and_result56 = load i32, i32* %and_result, align 4
  %bool_stack = alloca %dreamObj*, align 8
  %63 = call %dreamObj* @dreamBool(i32 %and_result56)
  store %dreamObj* %63, %dreamObj** %bool_stack, align 8
  %bool = load %dreamObj*, %dreamObj** %bool_stack, align 8
  %64 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @62, i32 0, i32 0), i32 1)
  %int_stack57 = alloca %dreamObj*, align 8
  %65 = call %dreamObj* @dreamInt(i32 0)
  store %dreamObj* %65, %dreamObj** %int_stack57, align 8
  %int58 = load %dreamObj*, %dreamObj** %int_stack57, align 8
  %66 = call %dreamObj* @equals_c(%dreamObj* %64, %dreamObj* %int58)
  %memberptr59 = getelementptr %dreamObj, %dreamObj* %bool, i32 0, i32 2
  %value_temp60 = load i8*, i8** %memberptr59, align 8
  %67 = bitcast i8* %value_temp60 to i32*
  %temp61 = load i32, i32* %67, align 4
  %memberptr62 = getelementptr %dreamObj, %dreamObj* %66, i32 0, i32 2
  %value_temp63 = load i8*, i8** %memberptr62, align 8
  %68 = bitcast i8* %value_temp63 to i32*
  %temp64 = load i32, i32* %68, align 4
  %and_result65 = alloca i32, align 4
  store i32 0, i32* %and_result65, align 4
  %69 = icmp eq i32 %temp61, 1
  store i1 %69, i32* %and_result65, align 1
  br i1 %69, label %and_then67, label %and_if66
  br label %and_if66

and_if66:                                         ; preds = %and_then, %and_then
  %70 = icmp eq i32 %temp64, 1
  store i1 %70, i32* %and_result65, align 1
  br label %and_then67

and_then67:                                       ; preds = %and_if66, %and_then
  %and_result68 = load i32, i32* %and_result65, align 4
  %bool_stack69 = alloca %dreamObj*, align 8
  %71 = call %dreamObj* @dreamBool(i32 %and_result68)
  store %dreamObj* %71, %dreamObj** %bool_stack69, align 8
  %bool70 = load %dreamObj*, %dreamObj** %bool_stack69, align 8
  %72 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @63, i32 0, i32 0), i32 1)
  %73 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @64, i32 0, i32 0), i32 1)
  %int_stack71 = alloca %dreamObj*, align 8
  %74 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %74, %dreamObj** %int_stack71, align 8
  %int72 = load %dreamObj*, %dreamObj** %int_stack71, align 8
  %memberptr73 = getelementptr %dreamObj, %dreamObj* %73, i32 0, i32 2
  %value_temp74 = load i8*, i8** %memberptr73, align 8
  %75 = bitcast i8* %value_temp74 to i32*
  %temp75 = load i32, i32* %75, align 4
  %memberptr76 = getelementptr %dreamObj, %dreamObj* %int72, i32 0, i32 2
  %value_temp77 = load i8*, i8** %memberptr76, align 8
  %76 = bitcast i8* %value_temp77 to i32*
  %temp78 = load i32, i32* %76, align 4
  %77 = sub i32 %temp75, %temp78
  %int_stack79 = alloca %dreamObj*, align 8
  %78 = call %dreamObj* @dreamInt(i32 %77)
  store %dreamObj* %78, %dreamObj** %int_stack79, align 8
  %int80 = load %dreamObj*, %dreamObj** %int_stack79, align 8
  %79 = call %dreamObj* @equals_c(%dreamObj* %72, %dreamObj* %int80)
  %memberptr81 = getelementptr %dreamObj, %dreamObj* %bool70, i32 0, i32 2
  %value_temp82 = load i8*, i8** %memberptr81, align 8
  %80 = bitcast i8* %value_temp82 to i32*
  %temp83 = load i32, i32* %80, align 4
  %memberptr84 = getelementptr %dreamObj, %dreamObj* %79, i32 0, i32 2
  %value_temp85 = load i8*, i8** %memberptr84, align 8
  %81 = bitcast i8* %value_temp85 to i32*
  %temp86 = load i32, i32* %81, align 4
  %and_result87 = alloca i32, align 4
  store i32 0, i32* %and_result87, align 4
  %82 = icmp eq i32 %temp83, 1
  store i1 %82, i32* %and_result87, align 1
  br i1 %82, label %and_then89, label %and_if88
  br label %and_if88

and_if88:                                         ; preds = %and_then67, %and_then67
  %83 = icmp eq i32 %temp86, 1
  store i1 %83, i32* %and_result87, align 1
  br label %and_then89

and_then89:                                       ; preds = %and_if88, %and_then67
  %and_result90 = load i32, i32* %and_result87, align 4
  %bool_stack91 = alloca %dreamObj*, align 8
  %84 = call %dreamObj* @dreamBool(i32 %and_result90)
  store %dreamObj* %84, %dreamObj** %bool_stack91, align 8
  %bool92 = load %dreamObj*, %dreamObj** %bool_stack91, align 8
  %memberptr93 = getelementptr %dreamObj, %dreamObj* %bool92, i32 0, i32 2
  %value_temp94 = load i8*, i8** %memberptr93, align 8
  %85 = bitcast i8* %value_temp94 to i32*
  %temp95 = load i32, i32* %85, align 4
  %86 = icmp eq i32 %temp95, 1
  br i1 %86, label %then96, label %ifcont

then96:                                           ; preds = %and_then89
  %87 = call %dreamObj* @new_scope(%dreamObj* %new_scope35, i32 1)
  %scope_stack97 = alloca %dreamObj*, align 8
  store %dreamObj* %87, %dreamObj** %scope_stack97, align 8
  %new_scope98 = load %dreamObj*, %dreamObj** %scope_stack97, align 8
  store i32 13, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %88 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @65, i32 0, i32 0))
  store %dreamObj* %88, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %89 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @66, i32 0, i32 0), i32 1)
  %90 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @67, i32 0, i32 0), i32 0)
  %91 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0), i32 1)
  %92 = call %dreamObj* @new_scope(%dreamObj* %91, i32 1)
  %scope_stack99 = alloca %dreamObj*, align 8
  store %dreamObj* %92, %dreamObj** %scope_stack99, align 8
  %new_scope100 = load %dreamObj*, %dreamObj** %scope_stack99, align 8
  %memberptr101 = getelementptr %dreamObj, %dreamObj* %90, i32 0, i32 2
  %value_temp102 = load i8*, i8** %memberptr101, align 8
  %93 = bitcast i8* %value_temp102 to %dreamObj* (...)*
  %94 = call %dreamObj* (...) %93(%dreamObj* %new_scope100, %dreamObj* %str)
  store i32 14, i32* @line, align 4
  br label %for_start37

ifcont:                                           ; preds = %and_then89
  store i32 15, i32* @line, align 4
  %str_stack103 = alloca %dreamObj*, align 8
  %95 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @69, i32 0, i32 0))
  store %dreamObj* %95, %dreamObj** %str_stack103, align 8
  %str104 = load %dreamObj*, %dreamObj** %str_stack103, align 8
  %96 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @70, i32 0, i32 0), i32 1)
  %97 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @71, i32 0, i32 0), i32 0)
  %98 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @72, i32 0, i32 0), i32 1)
  %99 = call %dreamObj* @new_scope(%dreamObj* %98, i32 1)
  %scope_stack105 = alloca %dreamObj*, align 8
  store %dreamObj* %99, %dreamObj** %scope_stack105, align 8
  %new_scope106 = load %dreamObj*, %dreamObj** %scope_stack105, align 8
  %memberptr107 = getelementptr %dreamObj, %dreamObj* %97, i32 0, i32 2
  %value_temp108 = load i8*, i8** %memberptr107, align 8
  %100 = bitcast i8* %value_temp108 to %dreamObj* (...)*
  %101 = call %dreamObj* (...) %100(%dreamObj* %new_scope106, %dreamObj* %str104)
  %null_dream109 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %102 = icmp ne %dreamObj* %45, %null_dream109
  br i1 %102, label %for_start37, label %forcont

forcont:                                          ; preds = %ifcont, %for_start37
  store i32 17, i32* @line, align 4
  %103 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @73, i32 0, i32 0), i32 1)
  %104 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @74, i32 0, i32 0), i32 1)
  %105 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @75, i32 0, i32 0), i32 0)
  %106 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0), i32 1)
  %107 = call %dreamObj* @new_scope(%dreamObj* %106, i32 1)
  %scope_stack110 = alloca %dreamObj*, align 8
  store %dreamObj* %107, %dreamObj** %scope_stack110, align 8
  %new_scope111 = load %dreamObj*, %dreamObj** %scope_stack110, align 8
  %memberptr112 = getelementptr %dreamObj, %dreamObj* %105, i32 0, i32 2
  %value_temp113 = load i8*, i8** %memberptr112, align 8
  %108 = bitcast i8* %value_temp113 to %dreamObj* (...)*
  %109 = call %dreamObj* (...) %108(%dreamObj* %new_scope111, %dreamObj* %103)
  %null_dream114 = load %dreamObj*, %dreamObj** @nullDream, align 8
  %110 = icmp ne %dreamObj* %24, %null_dream114
  br i1 %110, label %for_start, label %forcont115

forcont115:                                       ; preds = %forcont, %for_start
  ret %dreamObj* %4
}

define %dreamObj* @Player_obj(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 36, i32* @line, align 4
  %str_stack = alloca %dreamObj*, align 8
  %1 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @80, i32 0, i32 0))
  store %dreamObj* %1, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %2 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @81, i32 0, i32 0), %dreamObj* %str)
  store i32 37, i32* @line, align 4
  %int_stack = alloca %dreamObj*, align 8
  %3 = call %dreamObj* @dreamInt(i32 0)
  store %dreamObj* %3, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %4 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @82, i32 0, i32 0), %dreamObj* %int)
  store i32 38, i32* @line, align 4
  %int_stack1 = alloca %dreamObj*, align 8
  %5 = call %dreamObj* @dreamInt(i32 0)
  store %dreamObj* %5, %dreamObj** %int_stack1, align 8
  %int2 = load %dreamObj*, %dreamObj** %int_stack1, align 8
  %6 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @83, i32 0, i32 0), %dreamObj* %int2)
  %7 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @84, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @Player(%dreamObj* %scope, %dreamObj* %world, ...) !arg_names !3 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %world, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @88, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @89, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @90, i32 0, i32 0), i32 1)
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
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !2
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %9 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %10 = call %dreamObj* (...) %9(%dreamObj* %obj, %dreamObj* %func)
  store i32 40, i32* @line, align 4
  %11 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @91, i32 0, i32 0), i32 1)
  %12 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @92, i32 0, i32 0), i32 0)
  %int_stack = alloca %dreamObj*, align 8
  %13 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %13, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %12, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %14 = bitcast i8* %value_temp6 to i32*
  %temp = load i32, i32* %14, align 4
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %int, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %15 = bitcast i8* %value_temp8 to i32*
  %temp9 = load i32, i32* %15, align 4
  %16 = sdiv i32 %temp, %temp9
  %int_stack10 = alloca %dreamObj*, align 8
  %17 = call %dreamObj* @dreamInt(i32 %16)
  store %dreamObj* %17, %dreamObj** %int_stack10, align 8
  %int11 = load %dreamObj*, %dreamObj** %int_stack10, align 8
  %18 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @93, i32 0, i32 0), %dreamObj* %int11)
  store i32 41, i32* @line, align 4
  %19 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @94, i32 0, i32 0), i32 1)
  %20 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @95, i32 0, i32 0), i32 0)
  %int_stack12 = alloca %dreamObj*, align 8
  %21 = call %dreamObj* @dreamInt(i32 2)
  store %dreamObj* %21, %dreamObj** %int_stack12, align 8
  %int13 = load %dreamObj*, %dreamObj** %int_stack12, align 8
  %memberptr14 = getelementptr %dreamObj, %dreamObj* %20, i32 0, i32 2
  %value_temp15 = load i8*, i8** %memberptr14, align 8
  %22 = bitcast i8* %value_temp15 to i32*
  %temp16 = load i32, i32* %22, align 4
  %memberptr17 = getelementptr %dreamObj, %dreamObj* %int13, i32 0, i32 2
  %value_temp18 = load i8*, i8** %memberptr17, align 8
  %23 = bitcast i8* %value_temp18 to i32*
  %temp19 = load i32, i32* %23, align 4
  %24 = sdiv i32 %temp16, %temp19
  %int_stack20 = alloca %dreamObj*, align 8
  %25 = call %dreamObj* @dreamInt(i32 %24)
  store %dreamObj* %25, %dreamObj** %int_stack20, align 8
  %int21 = load %dreamObj*, %dreamObj** %int_stack20, align 8
  %26 = call %dreamObj* @set_var(%dreamObj* %obj, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @96, i32 0, i32 0), %dreamObj* %int21)
  ret %dreamObj* %5
}

define %dreamObj* @Game_obj(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %0, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 46, i32* @line, align 4
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @101, i32 0, i32 0), i32 1)
  %2 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @102, i32 0, i32 0), i32 1)
  %3 = call %dreamObj* @new_scope(%dreamObj* %2, i32 1)
  %scope_stack1 = alloca %dreamObj*, align 8
  store %dreamObj* %3, %dreamObj** %scope_stack1, align 8
  %new_scope2 = load %dreamObj*, %dreamObj** %scope_stack1, align 8
  %memberptr = getelementptr %dreamObj, %dreamObj* %1, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to %dreamObj* (...)*
  %5 = call %dreamObj* (...) %4(%dreamObj* %new_scope2)
  %6 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @103, i32 0, i32 0), %dreamObj* %5)
  store i32 47, i32* @line, align 4
  %7 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @104, i32 0, i32 0), i32 1)
  %8 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @105, i32 0, i32 0), i32 1)
  %9 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @106, i32 0, i32 0), i32 1)
  %10 = call %dreamObj* @new_scope(%dreamObj* %9, i32 1)
  %scope_stack3 = alloca %dreamObj*, align 8
  store %dreamObj* %10, %dreamObj** %scope_stack3, align 8
  %new_scope4 = load %dreamObj*, %dreamObj** %scope_stack3, align 8
  %memberptr5 = getelementptr %dreamObj, %dreamObj* %8, i32 0, i32 2
  %value_temp6 = load i8*, i8** %memberptr5, align 8
  %11 = bitcast i8* %value_temp6 to %dreamObj* (...)*
  %12 = call %dreamObj* (...) %11(%dreamObj* %new_scope4, %dreamObj* %7)
  %13 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @107, i32 0, i32 0), %dreamObj* %12)
  store i32 53, i32* @line, align 4
  %func_stack7 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, %dreamObj*, ...)* @handle_input to i8*))
  store %dreamObj* %14, %dreamObj** %func_stack7, align 8
  %func8 = load %dreamObj*, %dreamObj** %func_stack7, align 8
  %15 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @134, i32 0, i32 0), %dreamObj* %func8)
  %16 = call %dreamObj* @set_var(%dreamObj* %func8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @135, i32 0, i32 0), %dreamObj* %new_scope)
  %str_stack = alloca %dreamObj*, align 8
  %17 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @136, i32 0, i32 0))
  store %dreamObj* %17, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %func_stack9 = alloca %dreamObj*, align 8
  %18 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %18, %dreamObj** %func_stack9, align 8
  %func10 = load %dreamObj*, %dreamObj** %func_stack9, align 8, !var_args !0
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %func10, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %19 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %20 = call %dreamObj* (...) %19(i32 1, %dreamObj* %str)
  %21 = call %dreamObj* @set_var(%dreamObj* %func8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @137, i32 0, i32 0), %dreamObj* %20)
  store i32 68, i32* @line, align 4
  %func_stack13 = alloca %dreamObj*, align 8
  %22 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (%dreamObj*, ...)* @start to i8*))
  store %dreamObj* %22, %dreamObj** %func_stack13, align 8
  %func14 = load %dreamObj*, %dreamObj** %func_stack13, align 8
  %23 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @146, i32 0, i32 0), %dreamObj* %func14)
  %24 = call %dreamObj* @set_var(%dreamObj* %func14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @147, i32 0, i32 0), %dreamObj* %new_scope)
  %func_stack15 = alloca %dreamObj*, align 8
  %25 = call %dreamObj* @dreamFunc(i8* bitcast (%dreamObj* (i32, ...)* @dreamList to i8*))
  store %dreamObj* %25, %dreamObj** %func_stack15, align 8
  %func16 = load %dreamObj*, %dreamObj** %func_stack15, align 8, !var_args !0
  %memberptr17 = getelementptr %dreamObj, %dreamObj* %func16, i32 0, i32 2
  %value_temp18 = load i8*, i8** %memberptr17, align 8
  %26 = bitcast i8* %value_temp18 to %dreamObj* (...)*
  %27 = call %dreamObj* (...) %26(i32 0)
  %28 = call %dreamObj* @set_var(%dreamObj* %func14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @148, i32 0, i32 0), %dreamObj* %27)
  %29 = call %dreamObj* @set_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @149, i32 0, i32 0), %dreamObj* %new_scope)
  ret %dreamObj* %new_scope
}

define %dreamObj* @handle_input(%dreamObj* %scope, %dreamObj* %key, ...) !arg_names !4 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %alloctmp = alloca %dreamObj*, align 8
  store %dreamObj* %key, %dreamObj** %alloctmp, align 8
  %varName = load %dreamObj*, %dreamObj** %alloctmp, align 8
  %0 = call %dreamObj* @set_var(%dreamObj* %scope, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @108, i32 0, i32 0), %dreamObj* %varName)
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 54, i32* @line, align 4
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @109, i32 0, i32 0), i32 1)
  %str_stack = alloca %dreamObj*, align 8
  %2 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @110, i32 0, i32 0))
  store %dreamObj* %2, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  %3 = call %dreamObj* @equals_c(%dreamObj* %1, %dreamObj* %str)
  %memberptr = getelementptr %dreamObj, %dreamObj* %3, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %4 = bitcast i8* %value_temp to i32*
  %temp = load i32, i32* %4, align 4
  %5 = icmp eq i32 %temp, 1
  br i1 %5, label %then, label %ifcont

then:                                             ; preds = %EntryBlock
  %6 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %6, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  store i32 55, i32* @line, align 4
  %7 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @111, i32 0, i32 0), i32 1)
  %8 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @112, i32 0, i32 0), i32 0)
  %int_stack = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %9, %dreamObj** %int_stack, align 8
  %int = load %dreamObj*, %dreamObj** %int_stack, align 8
  %10 = call %dreamObj* @add_c(%dreamObj* %8, %dreamObj* %int)
  %11 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @113, i32 0, i32 0), i32 1)
  %12 = call %dreamObj* @set_var(%dreamObj* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @114, i32 0, i32 0), %dreamObj* %10)
  br label %ifcont

ifcont:                                           ; preds = %then, %EntryBlock
  store i32 57, i32* @line, align 4
  %13 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @115, i32 0, i32 0), i32 1)
  %str_stack1 = alloca %dreamObj*, align 8
  %14 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @116, i32 0, i32 0))
  store %dreamObj* %14, %dreamObj** %str_stack1, align 8
  %str2 = load %dreamObj*, %dreamObj** %str_stack1, align 8
  %15 = call %dreamObj* @equals_c(%dreamObj* %13, %dreamObj* %str2)
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %15, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %16 = bitcast i8* %value_temp4 to i32*
  %temp5 = load i32, i32* %16, align 4
  %17 = icmp eq i32 %temp5, 1
  br i1 %17, label %then6, label %ifcont19

then6:                                            ; preds = %ifcont
  %18 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack7 = alloca %dreamObj*, align 8
  store %dreamObj* %18, %dreamObj** %scope_stack7, align 8
  %new_scope8 = load %dreamObj*, %dreamObj** %scope_stack7, align 8
  store i32 58, i32* @line, align 4
  %19 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @117, i32 0, i32 0), i32 1)
  %20 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @118, i32 0, i32 0), i32 0)
  %int_stack9 = alloca %dreamObj*, align 8
  %21 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %21, %dreamObj** %int_stack9, align 8
  %int10 = load %dreamObj*, %dreamObj** %int_stack9, align 8
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %20, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %22 = bitcast i8* %value_temp12 to i32*
  %temp13 = load i32, i32* %22, align 4
  %memberptr14 = getelementptr %dreamObj, %dreamObj* %int10, i32 0, i32 2
  %value_temp15 = load i8*, i8** %memberptr14, align 8
  %23 = bitcast i8* %value_temp15 to i32*
  %temp16 = load i32, i32* %23, align 4
  %24 = sub i32 %temp13, %temp16
  %int_stack17 = alloca %dreamObj*, align 8
  %25 = call %dreamObj* @dreamInt(i32 %24)
  store %dreamObj* %25, %dreamObj** %int_stack17, align 8
  %int18 = load %dreamObj*, %dreamObj** %int_stack17, align 8
  %26 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @119, i32 0, i32 0), i32 1)
  %27 = call %dreamObj* @set_var(%dreamObj* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @120, i32 0, i32 0), %dreamObj* %int18)
  br label %ifcont19

ifcont19:                                         ; preds = %then6, %ifcont
  store i32 60, i32* @line, align 4
  %28 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @121, i32 0, i32 0), i32 1)
  %str_stack20 = alloca %dreamObj*, align 8
  %29 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @122, i32 0, i32 0))
  store %dreamObj* %29, %dreamObj** %str_stack20, align 8
  %str21 = load %dreamObj*, %dreamObj** %str_stack20, align 8
  %30 = call %dreamObj* @equals_c(%dreamObj* %28, %dreamObj* %str21)
  %memberptr22 = getelementptr %dreamObj, %dreamObj* %30, i32 0, i32 2
  %value_temp23 = load i8*, i8** %memberptr22, align 8
  %31 = bitcast i8* %value_temp23 to i32*
  %temp24 = load i32, i32* %31, align 4
  %32 = icmp eq i32 %temp24, 1
  br i1 %32, label %then25, label %ifcont38

then25:                                           ; preds = %ifcont19
  %33 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack26 = alloca %dreamObj*, align 8
  store %dreamObj* %33, %dreamObj** %scope_stack26, align 8
  %new_scope27 = load %dreamObj*, %dreamObj** %scope_stack26, align 8
  store i32 61, i32* @line, align 4
  %34 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @123, i32 0, i32 0), i32 1)
  %35 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @124, i32 0, i32 0), i32 0)
  %int_stack28 = alloca %dreamObj*, align 8
  %36 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %36, %dreamObj** %int_stack28, align 8
  %int29 = load %dreamObj*, %dreamObj** %int_stack28, align 8
  %memberptr30 = getelementptr %dreamObj, %dreamObj* %35, i32 0, i32 2
  %value_temp31 = load i8*, i8** %memberptr30, align 8
  %37 = bitcast i8* %value_temp31 to i32*
  %temp32 = load i32, i32* %37, align 4
  %memberptr33 = getelementptr %dreamObj, %dreamObj* %int29, i32 0, i32 2
  %value_temp34 = load i8*, i8** %memberptr33, align 8
  %38 = bitcast i8* %value_temp34 to i32*
  %temp35 = load i32, i32* %38, align 4
  %39 = sub i32 %temp32, %temp35
  %int_stack36 = alloca %dreamObj*, align 8
  %40 = call %dreamObj* @dreamInt(i32 %39)
  store %dreamObj* %40, %dreamObj** %int_stack36, align 8
  %int37 = load %dreamObj*, %dreamObj** %int_stack36, align 8
  %41 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @125, i32 0, i32 0), i32 1)
  %42 = call %dreamObj* @set_var(%dreamObj* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @126, i32 0, i32 0), %dreamObj* %int37)
  br label %ifcont38

ifcont38:                                         ; preds = %then25, %ifcont19
  store i32 63, i32* @line, align 4
  %43 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @127, i32 0, i32 0), i32 1)
  %str_stack39 = alloca %dreamObj*, align 8
  %44 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @128, i32 0, i32 0))
  store %dreamObj* %44, %dreamObj** %str_stack39, align 8
  %str40 = load %dreamObj*, %dreamObj** %str_stack39, align 8
  %45 = call %dreamObj* @equals_c(%dreamObj* %43, %dreamObj* %str40)
  %memberptr41 = getelementptr %dreamObj, %dreamObj* %45, i32 0, i32 2
  %value_temp42 = load i8*, i8** %memberptr41, align 8
  %46 = bitcast i8* %value_temp42 to i32*
  %temp43 = load i32, i32* %46, align 4
  %47 = icmp eq i32 %temp43, 1
  br i1 %47, label %then44, label %ifcont49

then44:                                           ; preds = %ifcont38
  %48 = call %dreamObj* @new_scope(%dreamObj* %func, i32 1)
  %scope_stack45 = alloca %dreamObj*, align 8
  store %dreamObj* %48, %dreamObj** %scope_stack45, align 8
  %new_scope46 = load %dreamObj*, %dreamObj** %scope_stack45, align 8
  store i32 64, i32* @line, align 4
  %49 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @129, i32 0, i32 0), i32 1)
  %50 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @130, i32 0, i32 0), i32 0)
  %int_stack47 = alloca %dreamObj*, align 8
  %51 = call %dreamObj* @dreamInt(i32 1)
  store %dreamObj* %51, %dreamObj** %int_stack47, align 8
  %int48 = load %dreamObj*, %dreamObj** %int_stack47, align 8
  %52 = call %dreamObj* @add_c(%dreamObj* %50, %dreamObj* %int48)
  %53 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %new_scope46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @131, i32 0, i32 0), i32 1)
  %54 = call %dreamObj* @set_var(%dreamObj* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @132, i32 0, i32 0), %dreamObj* %52)
  br label %ifcont49

ifcont49:                                         ; preds = %then44, %ifcont38
  %str_stack50 = alloca %dreamObj*, align 8
  %55 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @133, i32 0, i32 0))
  store %dreamObj* %55, %dreamObj** %str_stack50, align 8
  %str51 = load %dreamObj*, %dreamObj** %str_stack50, align 8
  ret %dreamObj* %str51
}

define %dreamObj* @start(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  store i32 69, i32* @line, align 4
  %func_stack1 = alloca %dreamObj*, align 8
  %0 = call %dreamObj* @dreamFunc(i8* bitcast (void ()* @clear to i8*))
  store %dreamObj* %0, %dreamObj** %func_stack1, align 8
  %func2 = load %dreamObj*, %dreamObj** %func_stack1, align 8, !var_args !2
  %memberptr = getelementptr %dreamObj, %dreamObj* %func2, i32 0, i32 2
  %value_temp = load i8*, i8** %memberptr, align 8
  %1 = bitcast i8* %value_temp to %dreamObj* (...)*
  %2 = call %dreamObj* (...) %1()
  store i32 70, i32* @line, align 4
  %3 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @138, i32 0, i32 0), i32 1)
  %4 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @139, i32 0, i32 0), i32 0)
  %5 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @140, i32 0, i32 0), i32 1)
  %6 = call %dreamObj* @new_scope(%dreamObj* %5, i32 1)
  %scope_stack = alloca %dreamObj*, align 8
  store %dreamObj* %6, %dreamObj** %scope_stack, align 8
  %new_scope = load %dreamObj*, %dreamObj** %scope_stack, align 8
  %memberptr3 = getelementptr %dreamObj, %dreamObj* %4, i32 0, i32 2
  %value_temp4 = load i8*, i8** %memberptr3, align 8
  %7 = bitcast i8* %value_temp4 to %dreamObj* (...)*
  %8 = call %dreamObj* (...) %7(%dreamObj* %new_scope)
  store i32 71, i32* @line, align 4
  %func_stack5 = alloca %dreamObj*, align 8
  %9 = call %dreamObj* @dreamFunc(i8* bitcast (void ()* @input to i8*))
  store %dreamObj* %9, %dreamObj** %func_stack5, align 8
  %func6 = load %dreamObj*, %dreamObj** %func_stack5, align 8, !var_args !2
  %memberptr7 = getelementptr %dreamObj, %dreamObj* %func6, i32 0, i32 2
  %value_temp8 = load i8*, i8** %memberptr7, align 8
  %10 = bitcast i8* %value_temp8 to %dreamObj* (...)*
  %11 = call %dreamObj* (...) %10()
  %12 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @141, i32 0, i32 0), i32 1)
  %13 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @142, i32 0, i32 0), i32 1)
  %14 = call %dreamObj* @new_scope(%dreamObj* %13, i32 1)
  %scope_stack9 = alloca %dreamObj*, align 8
  store %dreamObj* %14, %dreamObj** %scope_stack9, align 8
  %new_scope10 = load %dreamObj*, %dreamObj** %scope_stack9, align 8
  %memberptr11 = getelementptr %dreamObj, %dreamObj* %12, i32 0, i32 2
  %value_temp12 = load i8*, i8** %memberptr11, align 8
  %15 = bitcast i8* %value_temp12 to %dreamObj* (...)*
  %16 = call %dreamObj* (...) %15(%dreamObj* %new_scope10, %dreamObj* %11)
  store i32 72, i32* @line, align 4
  %17 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @143, i32 0, i32 0), i32 1)
  %18 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @144, i32 0, i32 0), i32 1)
  %19 = call %dreamObj* @new_scope(%dreamObj* %18, i32 1)
  %scope_stack13 = alloca %dreamObj*, align 8
  store %dreamObj* %19, %dreamObj** %scope_stack13, align 8
  %new_scope14 = load %dreamObj*, %dreamObj** %scope_stack13, align 8
  %memberptr15 = getelementptr %dreamObj, %dreamObj* %17, i32 0, i32 2
  %value_temp16 = load i8*, i8** %memberptr15, align 8
  %20 = bitcast i8* %value_temp16 to %dreamObj* (...)*
  %21 = call %dreamObj* (...) %20(%dreamObj* %new_scope14)
  %str_stack = alloca %dreamObj*, align 8
  %22 = call %dreamObj* @dreamStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @145, i32 0, i32 0))
  store %dreamObj* %22, %dreamObj** %str_stack, align 8
  %str = load %dreamObj*, %dreamObj** %str_stack, align 8
  ret %dreamObj* %str
}

define %dreamObj* @Game(%dreamObj* %scope, ...) !arg_names !1 {
EntryBlock:
  %null_dream = load %dreamObj*, %dreamObj** @nullDream, align 8
  %func_stack = alloca %dreamObj*, align 8
  store %dreamObj* %scope, %dreamObj** %func_stack, align 8
  %func = load %dreamObj*, %dreamObj** %func_stack, align 8
  %0 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %func, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @153, i32 0, i32 0), i32 1)
  %1 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @154, i32 0, i32 0), i32 1)
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
  store i32 50, i32* @line, align 4
  %10 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @155, i32 0, i32 0), i32 1)
  %11 = call %dreamObj* (%dreamObj*, i8*, i32, ...) @get_var(%dreamObj* %obj, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @156, i32 0, i32 0), i32 1)
  %12 = call %dreamObj* @set_var(%dreamObj* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @157, i32 0, i32 0), %dreamObj* %10)
  ret %dreamObj* %4
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }

!0 = !{!"1"}
!1 = !{}
!2 = !{!"0"}
!3 = !{!"world"}
!4 = !{!"key"}
