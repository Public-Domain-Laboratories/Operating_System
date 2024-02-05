Computer Science Dev Log
Data Structures & Algorithms

A program that produces a depth-indented listing of files.

Tree traversal: is a systematic way of visiting nodes in a tree. https://youtu.be/1WxLM2hwL-U?t=6
1. Build a directory tree.
2. Tranverse the directory tree.

Technique used for traversing trees or graphs.

Traversing trees or graphs refers to the process of visiting and processing each node or vertex in a systematic way. 

Display the folder structure of a directory in a tree-like format.
Displays the directory structure of a path graphically.

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
* Final connector
* Trie data structure
* Hierarchy structure
* Tree structure graph, graphic
* construct tree algorithm
* depth first search - DFS traversal of a Tree
* DFS or Depth-First Search: 1. Pre-order traversal. 2.In-order traversal. 3. Post-order traversal.
* BFS or Breadth-First Search 1. Level-order traversal.
* Tree walk
* Directory nodes
* Directory parse
* Form a tree view of path names.
* Building Tree Structure from a list of string paths.
* A Node tree from list of paths
* Connector between nodes.

Recursive traversal
1. Pre-order traversal: 1. Visit node. 2. Traverse left. 3. Traverse right. https://www.youtube.com/watch?v=1WxLM2hwL-U


You have to know when directories end and dirEntries("", SpanMode.breadth) might not provide that.
You might need to recheck manualy before printing symbol.

You kinda have to transverse first and then decide what symbol to put.

Aka. Needs late response/delay by a step before printing.

Using stack data structure might help with that.

Check path array length or item count to see if the next path is in the same branch level. 
Flawed: the next path might be on the same level, but under different folders

match(back) and pop array item
->[item, item, back]
->[item, back]
->[back]

The stack data structure should be used for traversal, that is: loop over in delayed manner to decide on which branch symbol to place.


Delayed traversal using stack:
Array: [item, item, item]
		|_______
Stack: [empty, item, item, item]

The first item in the stack is empty.
A new item is added to the stack from array.

This way using a stack it would be possible to check for the next item in the stack?
By referencing the array item?


Graph Data Structure 3. Traversing a Graph (algorithms)
https://www.youtube.com/watch?v=ymlzHmRN4To

https://dlang.org/library/std/file/span_mode.html

If the next path is no longer part of the folder: complete the branch. (└───)

https://en.wikipedia.org/wiki/Tree_(command)

Determine if it is last level in the current level of the tree.(└───)

Check amount of items in the folder and if it's last in the loop, then add ending. └───
Traversal for counting folders is required?


Traversal over all paths to check for equal level directories might be necessary to ensure stability and requirement of sorting the list of paths.

Count the size of directories and only then using directory count check the last directory while printing the tree. 

Or checking if the next item in the path is on the same level as you are currently.
Or checking at end of current path if the next path at at the same (level/depth) folder.

 compare to value from previous iteration and  set current iteration value into variable  
 compare if path subfolders are same as previous iteration.
 
 If relative_path contains not same amount of subfolder depth as previous relative_path: add symbol └───
 
 Set into temporary variables then continue. In the next iteration print previous and current one.
 
 If the next path have less identation subfolders than current one: place └───  
Pseudo code
```
 While(paths not empty){
	Set "variable" to previous iteration value;
	pop "paths";
}
```

Pseudo code
```
 While(paths not empty){
	prevDepth = "Depth"
	if "path" is not path end item:
		Add +1 to "Depth"
	If "Depth" is lower than prevDepth:
		print "└───"
}
```

Check if current depth is smaller or higher than the previous path depth.

You have to wait until depth is scanned for the next path before printing previous branch symbol and the next one.


Loop forward, check if current variable is matched, if not: print previous and the current one, move forward to the next path.
