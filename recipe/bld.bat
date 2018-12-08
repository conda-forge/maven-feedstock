XCOPY "." "%LIBRARY_PREFIX%" /e

rd /s /q "%LIBRARY_PREFIX%\lib\ext\"
