@echo off

mkdir "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\Command line"
mkdir "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\batch"
mkdir "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\batch\Hidden folder"
mkdir "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\batch\Not hidden folder"
mkdir "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\Command line\Hidden folder"
mkdir "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\Command line\Not hidden folder"

attrib +h "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\Command line\Hidden folder"
attrib +h "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\batch\Hidden folder"

xcopy /? > "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\Command line\Not hidden folder\copyhelp.txt"
xcopy /? > "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\batch\Not hidden folder\copyhelp.txt"

xcopy "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\Command line\Not hidden folder\copyhelp.txt" "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\Command line\Hidden folder\copied_copyhelp.txt" F
xcopy "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\batch\Not hidden folder\copyhelp.txt" "Laboratories\PZ-23-1\Malieiev Oleksii Surenovich\batch\Hidden folder\copied_copyhelp.txt" F

pause