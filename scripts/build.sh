
if [[ $1 == "-d" ]]; then
    build_type="Debug"
else
    build_type="Release"
fi

build_dir="build/${build_type}"

mkdir -p $build_dir
cmake -DCMAKE_BUILD_TYPE=$build_type -B $build_dir
cmake --build $build_dir
