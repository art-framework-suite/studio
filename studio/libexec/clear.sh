if [ -d study-area ]; then
  rm -rf study-area
else
  rm -r build
  rm -r src
  rm -r ext
  rm helpers.cmake
  rm CMakeLists.txt
  rm setup.sh
  rm -rf study-area
fi
