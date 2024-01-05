import std;
import std.regex;
void main() {
	
	auto re = regex(r"[^\\]+\\","g");
    foreach (string name; dirEntries("", SpanMode.breadth))
    {
		if (name.startsWith(".git") == false){
			if (name.isDir) writeln(replaceAll(name, re, "  |____")); // │─
		}
    }
}

