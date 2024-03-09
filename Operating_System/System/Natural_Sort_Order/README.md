>In computing, natural sort order is the ordering of strings in alphabetical order, except that multi-digit numbers are treated atomically, i.e., as if they were a single character. Natural sort order has been promoted as being more human-friendly than machine-oriented, pure alphabetical sort order.
https://blog.codinghorror.com/sorting-for-humans-natural-sort-order/  
https://stackoverflow.com/questions/442429/windows-explorer-sort-method  

Possible starting point for implementation - List of strings and a main method.

```
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
    
    
}
```

Breadth-first search is mandatory: scanning all the paths and transversing on each level over all paths present.

Reference

```
.
└── ubuntu
    ├── mydirectory1
    │   ├── file1
    │   ├── file2
    │   ├── file3
    │   ├── file4
    │   └── letters
    │       ├── books
    │       ├── magazines
    │       └── readme
    ├── mymovies
    │   ├── comedy
    │   ├── drama
    │   ├── terror
    │   └── thriller
    └── mytrips
        ├── mydirexample
        │   └── file.txt
        └── pictures
            ├── Australia
            ├── France
            ├── Germany
            ├── Japan
            └── USA

```
