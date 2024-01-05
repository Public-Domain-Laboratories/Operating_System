import std;
import std.regex;

void main() {
	
    foreach (string path; dirEntries("", SpanMode.breadth))
    {
		if (path.startsWith(".git") == false && path.isDir){
			string expanded = replaceAll(path, regex(r"[^\\]+\\","g"), "  │───");
			writeln(expanded); // │─ //|____
		}
    }
}

