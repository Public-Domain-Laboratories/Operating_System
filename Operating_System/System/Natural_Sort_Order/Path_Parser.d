import std;

// Folders can store only files.
// Directories can store files and subfolders
// Mostly can be used interchangeably.

string[] paths = [
    "./0_directory/",
    "./1_directory/1_folder/subfolder/",
    "./2_directory/2_folder/subfolder/",
    "./3_directory/3_folder/subfolder/",
    "./4_directory/4_folder/subfolder/",
    "./5_directory/2_folder/3_subfolder/"
];

void main() {
    // Traverse path.
    writeln("Output: ");
    foreach (path; paths) {
        int depth = 0;
        foreach (directory; splitString(path)) {
            for (int count; count<=depth; count++) write("__");
            write(directory);
            
            depth++;
            
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
