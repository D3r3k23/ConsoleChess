
if [[ $1 == "-d" ]]; then
    build_type="Debug"
else
    build_type="Release"
fi

executable_path="build/${build_type}/bin/ConsoleChess"

if [[ -x $executable_path ]]; then
    ./$executable_path
else
    echo "Executable: ${executable_path} does not exist."
fi
