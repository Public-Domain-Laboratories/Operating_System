import std;
import std.regex;

void main() {
	
    foreach (string name; dirEntries("", SpanMode.breadth))
    {
		if (name.startsWith(".git") == false && name.isDir){
			string expanded = replaceAll(name, regex(r"[^\\]+\\","g"), "  │───");
			writeln(expanded); // │─ //|____
		}
    }
}

