import std;

void Print_Directory_Paths(){
	foreach (string absolutePath; dirEntries("", SpanMode.breadth)){
		if (absolutePath.isDir && absolutePath.startsWith(".git") == false){
			string[] deconstructed_path = absolutePath.split("\\");
			writeln(deconstructed_path); 
		}
	}
}

void main() => Print_Directory_Paths();