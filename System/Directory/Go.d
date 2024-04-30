// Goes to a directory // "You have to go to a directory and open this file."
// Switches directory
// Changes directory
// Opens directory
// https://dlang.org/phobos/std_file.html#chdir
// https://github.com/dlang/phobos/blob/master/std/file.d#L2885
// Currently only changes the current path variable inside program itself without affecting the shell, console, command prompt.
void go(string path="."){
  import std.stdio;
  import std.file;
  chdir(path);
  write(getcwd);
  
}

void main(string[] path) => go(path[1]);
