import std;


auto append(string lhs, immutable(char) rhs) {
   return lhs ~ rhs; 
}

// Folders can store only files.
// Directories can store files and subfolders
// Mostly can be used interchangeably.

string[] paths = [
    "./directory/folder/subfolder/",
    "./directory/folder/subfolder/",
];

void main() {
    
    foreach(path; paths) 
		foreach (directory; splitString(path)) 
        	writeln(directory);  
}

// Path parser
string[] splitString(string text) {
    string[] extracted;
    string token;
    foreach (letter; text) {
        if (letter != '/'){
            token = append(token, letter);
        }
        if (letter == '/') {
            extracted ~= token;
            token = "";
        }
    }
    return extracted;
}
