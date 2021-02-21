if [[ $1 == "-d" ]]; then
    debug=true
fi

if [[ "$debug" == true ]]; then
    executable_path="build/Debug/bin/ConsoleChess"
else
    executable_path="build/Release/bin/ConsoleChess"
fi

if [[ -x $executable_path ]]; then
    ./$executable_path
else
    echo "Executable: $executable_path does not exist."
fi
