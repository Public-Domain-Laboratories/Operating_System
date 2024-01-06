import std;
import std.regex;

void main() {
	
    foreach (string absolutePath; dirEntries("", SpanMode.breadth))
    {
		if (absolutePath.startsWith(".git") == false && absolutePath.isDir){
			if (true){
				string expanded = replaceAll(absolutePath, regex(r"[^\\]+\\","g"), "  │───");
				writeln(expanded); // │─ //|____
			} else if (true) {
				writeln(absolutePath); 
			}
		}
    }
}

