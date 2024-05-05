import std;

void Print_Directory_Paths(){
	foreach (string relativePath; dirEntries("", SpanMode.breadth)){
		if (relativePath.isDir && relativePath.startsWith(".git") == false){
			string[] deconstructed_path = relativePath.split(std.path.dirSeparator);
				writeln(deconstructed_path); 
				writeln("test");
			
		}
	}
}

void main() => Print_Directory_Paths();