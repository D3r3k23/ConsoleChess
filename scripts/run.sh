if [[ $1 == "-d" ]]; then
    debug=true
fi

if [[ "$debug" == true ]]; then
    executable_path="bin/Debug/ConsoleChess"
else
    executable_path="bin/Release/ConsoleChess"
fi

if [[ -x $executable_path ]]; then
    echo "Running executable: $executable_path."
    ./$executable_path
else
    echo "Executable: $executable_path does not exist."
fi
