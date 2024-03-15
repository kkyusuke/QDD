sudo rm CMakeCache.txt cmake_install.cmake && sudo rm -r CMakeFiles && sudo rm Makefile && sudo rm CTestTestfile.cmake
sudo rm -r _deps
sudo find src qdd test -type f \( -name 'CMakeCache.txt' -o -name 'cmake_install.cmake' -o -name 'Makefile' \) -exec rm {} + && sudo find src qdd test -type d -name 'CMakeFiles' -exec rm -r {} +
