import std;

// Folders can store only files.
// Directories can store files and subfolders
// Mostly can be used interchangeably.




// Path parser, reader, word former.
// Converts path to array.
// Takes text, extracts all characters that are not a slash (/)
// Loops over a text input and if it is not a slash character it will be stored into word and then that word is stored into an array.

	// Read letter and add it to word. 
	// Store individual words to the dictionary
	//clear word temp storage
	
// Algorithm
// Splitter

void main() {
	writeln("Please run:    rdmd -unittest Path_Parser.d    to start the test. ");
}

string[] splitPathString(string text) {
    
	string word;
    string[] wordList;
	
    foreach (char letter; text) {
	
        if (letter == '/' || letter == '\\') {
			wordList ~= word;
			word = ""; 
			continue; 
		} 
		
		word ~= letter;
    }
    return wordList;
}

unittest
{
	string[] paths = [
		"./directory/folder/subfolder/",
		"./directory/folder/subfolder/",
		r"C:\Users\Windows10\Documents\GitHub\Operating-System\Operating_System\System\Print_Folder_Tree\Path_Parser",
	];

    foreach (path; paths) writeln(path);
    
    foreach (string path; paths) {
		foreach (directory; splitPathString(path)) {
            write(directory, ); 
            write("\n");
		}
    }
}



// Instead of continue an empty character is used. More instructions per cycle. No benefits.
string[] splitPathStringLessEfficient(string text) {
    
	string word;
    string[] wordList;
	
    foreach (char letter; text) {
	
        if (letter == '/') {
			
			wordList ~= word;
			word = ""; 
			letter = '\0';
		} 
		
		word ~= letter;
    }
    return wordList;
}

// tool/function
string[] splitString(string text, char splitter = '/') {
    
	string word;
    string[] wordList;
	
    foreach (char letter; text) {
		word ~= letter;
	
        if (letter == splitter) {
			wordList ~= word;
			word = ""; 
		} 
    }
    return wordList;
}

string[] splitStringSimple(string text) {
    
	string word;
    string[] wordList;
	
    foreach (char letter; text) {
		word ~= letter;
	
        if (letter == '_') {
			wordList ~= word;
			word = ""; 
		} 
    }
    return wordList;
}