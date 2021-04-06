~/Library/Android/sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-ld llvm_output.o  -shared -lc -L/Users/marcfervil/Library/Android/sdk/ndk/21.1.6352462/platforms/android-29/arch-arm/usr/lib -fPIC


#$NDK_GCC/bin/arm-linux-androideabi-ld
 # add.o
 # jni_bridge.o
 # -shared # Build a shared library
 # -lc # We'll need the libc
 # -L$NDK/platforms/android-13/arch-arm/usr/lib