import std;

// Folders can store only files.
// Directories can store files and subfolders
// Mostly can be used interchangeably.

string[] paths = [
    "./directory/folder/subfolder/",
    "./directory/folder/subfolder/",
];

void main() {
    // Traverse path.

    foreach (path; paths) writeln(path);
    
    foreach (string path; paths) {
        size_t depth;
        foreach (directory; splitString(path)) {
            foreach (i; 0 .. depth) write(" ");
            if (depth != 0) write("├");
            write(directory, ); 
            write("\n");
            depth++;
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
