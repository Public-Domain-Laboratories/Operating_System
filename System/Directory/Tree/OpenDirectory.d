import std.stdio;
import std.file;

void main()
{
    DirEntry directory = DirEntry("C:\\Users\\Windows10\\Desktop\\Server5");
    string test = directory.name();
    write(test);
}
