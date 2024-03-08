import std;

// Folders can store only files.
// Directories can store files and subfolders
// Mostly can be used interchangeably.

string[] paths = [
    "./directory/folder/subfolder/",
];

void main() {
    // Traverse path.
    foreach (path; paths) writeln(path);
    foreach (size_t depth, string path; paths) {
        depth=0;
        foreach (directory; splitString(path)) {
   			foreach (i; 0 .. depth) write("_");
            write(directory, depth++);
            write("\n");
            
        }
    }
}

// Path parser
string[] splitString(string text) {
    string[] extracted;
    string token;
    foreach (letter; text) {
        if (letter != '/'){
            token ~= letter;
        }
        if (letter == '/') {
            extracted ~= token;
            token = "";
        }
    }
    return extracted;
}
