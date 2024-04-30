import std.stdio;
import std.file;

void main()
{
    DirEntry directory = DirEntry("C:\\Users\\Windows10\\Desktop\\Server5");
    string directoryPath = directory.name();
    write("Directory path: " ~ directoryPath);
    writeln;
    write("Directory object: " ~ directory);
}
