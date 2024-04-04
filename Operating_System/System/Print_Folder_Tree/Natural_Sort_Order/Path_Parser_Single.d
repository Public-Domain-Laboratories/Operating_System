import std;

// Folders can store only files.
// Directories can store files and subfolders
// Mostly can be used interchangeably.

string[] paths = [
    "./directory/folder/subfolder/",
    "./directory/folder/subfolder/",
];

void main() {

    foreach (path; paths) writeln(path);
    
    foreach (string path; paths) {
        size_t depth;
        foreach (directory; splitString(path)) {
            foreach (i; 0 .. depth) write(" ");
            if (depth != 0) write(" ");
            write(directory, ); 
            write("\n");
            depth++;
        }
    }
}

// Path parser
// Converts path to array.
// Takes text, extracts all characters that are not a slash (/)
// Loops over a text input and if it is not a slash character it will be stored into word and then that word is stored into an array.
string[] splitString(string text) {
    
	string word;
    string[] extracted;
	
    foreach (letter; text) {
        if (letter != '/'){
			join([word, 's']);
            //word ~= letter;
        }
        if (letter == '/') {
            extracted ~= word;
            word = "";
        }
    }
    return extracted;
}
