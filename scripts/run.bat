@echo off

set executable_path=build\bin\

if exist %exectuable_path% (
    call %exectuable_path%
) else (
    echo "Executable does not exist."
)
