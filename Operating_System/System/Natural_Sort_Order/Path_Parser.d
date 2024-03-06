import std;

// Folders can store only files.
// Directories can store files and subfolders
// Mostly can be used interchangably.

string[] paths = [
    "./directory/1_folder/subfolder/",
    "./directory/2_folder/subfolder/",
    "./directory/3_folder/subfolder/",
    "./directory/4_folder/subfolder/",
    "./directory/2_folder/3_subfolder/"
];

void main()
{
    writeln("Input: ");
    foreach(path; paths){
    	writeln(path);
    }
    
    writeln("Expected: ");
    writeln("
        ./directory/1_folder/subfolder/
        ./directory/2_folder/subfolder/
        ./directory/2_folder/3_subfolder/
        ./directory/3_folder/subfolder/
        ./directory/4_folder/subfolder/

           ");
    
      foreach(node; splitString(paths[0])){
        writeln(node);
      }
}

// Path parser
string[] splitString(string text)
{
    string[] extracted;
    string token;
    foreach(letter; text) {
        

        if (letter != '/') token ~= letter;
        if (letter == '/') {
            extracted ~= token;
			token="";
        }
        
    }
       
 
    return extracted;
}
