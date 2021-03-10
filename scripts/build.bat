
@echo off


if "%1" == "-d" (
    set build_type=Debug
) else (
    set build_type=Release
)

set build_dir=build/%build_type%

if not exist "build" mkdir build
cmake -DCMAKE_BUILD_TYPE=%build_type% -S %cd% -B %build_dir%
cmake --build $build_dir

if [[ -f .vscode/c_cpp_properties.json ]]; then
    cp ${build_dir}/compile_commands.json .vscode
fi





cmake --build build
