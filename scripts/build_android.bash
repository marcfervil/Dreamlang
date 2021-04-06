llvm-link lib/hopes_lib.ll output/program_output.ll -o output/android/libdream.ll

llc -mtriple=armv7-none-linux-androideabi -filetype=obj -o output/android/llvm_output.o output/android/libdream.ll -relocation-model=pic

~/Library/Android/sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-ld -o output/android/libdream.so output/android/llvm_output.o -shared -lc -L ~/Library/Android/sdk/ndk/21.1.6352462/platforms/android-29/arch-arm/usr/lib -fPIC

nm output/android/libdream.so
#-soname=output/android/libdream.so
#--export-dynamice