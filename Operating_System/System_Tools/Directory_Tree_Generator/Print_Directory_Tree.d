import std;

void Print_Directory_Paths(){
	foreach (string relativePath; dirEntries("", SpanMode.breadth)){
		if (relativePath.isDir && relativePath.startsWith(".git") == false){
			string[] deconstructed_path = relativePath.split("\\");
			foreach (member; deconstructed_path){
				writeln(member); 
			}
			
			// Iterate recursively and check the last member.
		}
	}
}

void main() => Print_Directory_Paths();