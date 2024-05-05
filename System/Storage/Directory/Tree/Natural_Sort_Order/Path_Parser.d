import std;

// Folders can store only files.
// Directories can store files and subfolders
// Mostly can be used interchangeably.

string[] paths = [
    "./directory/",
    "./directory/folder/subfolder/",
    "./directory/folder/subfolder/",
    "./directory/folder/subfolder/",
    "./directory/folder/subfolder/",
    "./directory/folder/subfolderTwo/"
];

void main() {
    // Traverse path.
    foreach (string path; paths) {
        foreach (size_t depth, string directory; splitString(path)) {
            for (int count; count<=depth; count++) {if (count != depth) {write("|  ");} else {write("|");} }
            write("_", directory, depth++);
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
