// OpenDirectory.d = Opens directory file and lists content: files and sub-directories.
import std.stdio;
import std.file;


void OpenDirectory(string path){
    DirEntry directory = DirEntry(path);
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

void main()
{

    OpenDirectory("C:\\Users\\Windows10\\Desktop\\Server5");

}
