make -j4 \
  glslang_path=external/glslang \
  spirv_cross_1_2_include_path=external/SPIRV-Headers/include/spirv/1.2 \
  spirv_cross_config_include_path=external/SPIRV-Cross \
  spirv_cross_lib_path=external/SPIRV-Cross/build \
  SDK_ROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk
ldid -S build/libmgl.dylib
