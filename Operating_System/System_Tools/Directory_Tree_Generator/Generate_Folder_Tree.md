Directory tree structure overview

The directory tree structure is a visual representation that helps users understand the organization of files and directories 
within a file system, making it easier to navigate and manage the file hierarchy. 

Directory Tree  
A tool to generate or draw an interactive version of ASCII or UTF output:  
* Include links to the folders and files.
* Needs ability to export in various UTF table/box drawing symbols.
  
This will allow for better overview of the project.  

Also: Need a latest changed folders list for quick delving into recent projects on the monolithic repository.

If it's a subfolder do indent.
Treat subfolders with identation.
First subfolder idents with branch, then identations added before branch.
You can't correctly render a tree with ReplaceALL.
Maybe while loop with push and pop would be great for processing directories.

Treat the ending of the tree with angled symbol.

~Needs sort by alphabetical order.~ No, it needs only to construct tree as the list of paths are presented.


├───Kernel  
│   ├───Boot  
│   │   └───Bootloaders  
│   ├───Devices  
│   ├───Networking_Devices  
│   └───Storage_Devices  
│       └───Filesystems  
├───Library  
│   ├───Legacy  
│   └───Standard_Library  
│       ├───Aplication_Binary_Interface  
│       ├───Date_and_Time  
│       ├───Input_Output  
│       ├───Math  
│       └───Memory_Allocator  
├───Programs  
│   ├───Administration  
│   ├───Configurations  
│   ├───Package_Manager  
│   ├───Processes  
│   │   ├───Memory_Manager  
│   │   └───Process_Manager  
│   ├───Settings  
│   ├───User_Interface  
│   └───Utilities  
│       ├───Formal_Math_Formula_Evaluator  
│       ├───Regular_Expression_Engine  
│       └───Text_Tools  
├───System_Tools  
│   ├───Command_Line  
│   │   ├───Console  
│   │   └───Interpreter  
│   ├───Compiler  
│   │   └───Linker  
│   ├───Development  
│   │   └───Language  
│   │       └───Parsers  
│   └───Logs  
└───Users  
    ├───General_Administrator  
    │   ├───Desktop  
    │   ├───Files  
    │   └───Home  
    ├───Regular_User  
    └───System_Administrator  

### Algorithm

Recursively list all the contents of the current folder.
Ident and use characters to emphasise structure of folders and files.

D Language: Print_Directory_Tree
https://dlang.org/phobos/std_file.html#.dirEntries

If it's subfolder: delete that name part of the folder. 



Terminology Essentials
* Tree Printer
* Horizontal Trees
* Tree nodes
* Branching structures