import std;
import std.regex;

void main() {
	
    foreach (string absolute_path; dirEntries("", SpanMode.breadth))
    {
		if (absolute_path.startsWith(".git") == false && absolute_path.isDir){
			string expanded = replaceAll(absolute_path, regex(r"[^\\]+\\","g"), "  │───");
			writeln(expanded); // │─ //|____
		}
    }
}

