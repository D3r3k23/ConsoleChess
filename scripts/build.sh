if [[ $1 == "-d" ]]; then
    debug=true
fi

if [[ "$debug" == true ]]; then
    mkdir -p build/Debug
    cmake -DCMAKE_BUILD_TYPE=Debug -B build/Debug
    cmake --build build/Debug
else
    mkdir -p build/Debug
    cmake -DCMAKE_BUILD_TYPE=Release -B build/Release
    cmake --build build/Release
fi