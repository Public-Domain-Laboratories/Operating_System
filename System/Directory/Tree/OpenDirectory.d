import std.stdio;
import std.file;

void main()
{
    
    DirEntry directory = DirEntry("C:\\Users\\Windows10\\Desktop\\Server5");
    string directoryPath = directory.name();
    // dirEntries function also accepts direct raw string path.
    foreach (DirEntry entry; dirEntries(directoryPath, SpanMode.shallow))
    {
            writeln(entry.name());
    }


    write("Directory object: " ~ directory);
    writeln;
    write("Directory path: " ~ directoryPath);

}
