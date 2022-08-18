ios="-DCMAKE_BUILD_TYPE=Release -DCMAKE_CROSSCOMPILING=true -DCMAKE_OSX_ARCHITECTURES=arm64 -DCMAKE_OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk"

cd SPIRV-Cross
mkdir build
cd build
cmake .. $ios
make -j 4
cd ../..
cd SPIRV-Headers
mkdir build
cd build
cmake .. $ios
make -j 4
cd ../..
cd SPIRV-Tools
mkdir build
cd build $ios
cmake ..
make -j 4
cd ../..
cd glslang
mkdir build
cd build
cmake .. $ios
make -j 4
cd ../..
cd glfw
mkdir build
cd build
cmake ..
make -j 4 glfw
cd ../..
