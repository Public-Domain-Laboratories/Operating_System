import std;

void Print_Directory_Paths(){
	foreach (string relativePath; dirEntries("", SpanMode.breadth)){
		if (relativePath.isDir && relativePath.startsWith(".git") == false){
			string[] deconstructed_path = relativePath.split(std.path.dirSeparator);
			foreach (member; deconstructed_path){
				if (member == deconstructed_path.back){
					write("├───"); 
					write(member); 
					write("\n"); 
				} else { write("│  ");}
				
			}
			
		}
	}
}

void main() => Print_Directory_Paths();