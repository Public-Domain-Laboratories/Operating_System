import std;
import std.regex;

void main() {
	
	
	//writeln(dirEntries("", SpanMode.breadth));
	
	foreach (string absolutePath; dirEntries("", SpanMode.breadth))
	{
		if (absolutePath.startsWith(".git") == false && absolutePath.isDir){
			if (true){
				string expanded = replaceAll(absolutePath, regex(r"[^\\]+\\","g"), "  │───");
				writeln(expanded); // │─ //|____ consume the paths, IF it is last folder, add newline with double spaces. Check if it's the last folder in the path while consuming. //replaceFirst
			} else if (true) {
				writeln(std.regex.split(absolutePath, regex(r"[^\\]+\\","g"))); 
			}
		}
	}
}

