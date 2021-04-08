
llvm-link lib/hopes_lib.ll output/program_output.ll -o output/android/libdream.ll

llc -mtriple=armv7-none-linux-androideabi -filetype=obj -o output/android/llvm_output.o output/android/libdream.ll -relocation-model=pic &> output/complaints_department.txt

~/Library/Android/sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-ld -o output/android/libdream.so output/android/llvm_output.o -shared -lc -L ~/Library/Android/sdk/ndk/21.1.6352462/platforms/android-29/arch-arm/usr/lib -fPIC

#cp output/android/libdream.so "/Users/marcfervil/AndroidStudioProjects/DreamlangAndorid/app/src/main/jniLibs/armeabi-v7a/libdream.so"


cp output/android/libdream.so  "/Users/marcfervil/AndroidStudioProjects/DreamlangAndorid/app/.cxx/cmake/debug/armeabi-v7a/libdream.so"
#nm output/android/libdream.so
#-soname=output/android/libdream.so
#--export-dynamice


cd /Users/marcfervil/AndroidStudioProjects/DreamlangAndorid
#gradle assembleDebug
gradle installDebug
cd app/build/outputs/apk/debug
adb -d install -t --fastdeploy app-debug.apk
adb -d shell am start -n "com.almostanything.dreamlang/com.almostanything.dreamlang.MainActivity" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER
