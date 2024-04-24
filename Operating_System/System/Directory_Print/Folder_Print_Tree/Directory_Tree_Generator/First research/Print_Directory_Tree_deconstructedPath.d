import std;

void Print_Directory_Paths(){
	foreach (string relativePath; dirEntries("", SpanMode.breadth)){
		if (relativePath.isDir && relativePath.startsWith(".git") == false){
			string[] deconstructed_path = relativePath.split(std.path.dirSeparator);
			foreach (member; deconstructed_path){
				writeln(member); 
			}
			
		}
	}
}

void main() => Print_Directory_Paths();