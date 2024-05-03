


# Operating_System [![Sponsor_button](https://dub.sh/fk4m2Ao)](https://dub.sh/Operating-System "Donate to the Project")

> [!IMPORTANT]  
> This is a long term project to standardise and structure an Operating System for the future.  
> You are welcomed to [fork](../../fork/), improve, [declare Issues](../../issues/new/) and [suggest Pull Requests](../../pulls/); [Discussions](../../discussions/).
> 
> [![Download_Button](https://dub.sh/haAKbTN)](../../archive/main.zip "Download Repository as .zip file")  

A modular Computer Operating System for general computing.

Standardized interfaces and interaction with Operating System Kernels.  
* Barebones structure of the Operating System.
* Robust, efficient, and user-friendly.

With focus on performance, security, usability, compatibility, scalability, and reliability.

More information: [Operating_System](#operating-system-root-folder)

No Copyright reserved.  
[Public Domain Laboratories.](https://opencollective.com/public-domain-laboratories/projects/pdl_operating_system)  
___
A Public Domain alternative to Linux Distributions, Windows Operating Systems, Apple MacOS, Google Android.  

___

### Operating System Root folder

Overview of the operating system.
* [Kernel](./Kernel/) - Automatic Computer Resource Manager.
* [Library](./Library/) - System Library and Interfaces of [Operating_System](./).
* [System](./System/) - Tools for managing, inspecting and recovering [Operating_System](./).
* [Programs](./Programs/) - Installed System-wide executable software. (Compilers, Administration)
* [Users](./Users/) - Data and software of the Users.
 
Main Menu
* [User Manual]()
* [Documentation]()
* [Specification]()
* [References]()
* [Research]()
* [Resources]()
* [Support]()
* [Contribute]()
* [License](../LICENSE)

Operating_System.  
No copyrights reserved.   
@Public_Domain_Laboratories

The Operating system directories are in object like structure.  
Object -> subobject (Common theme, groups files for readable access)  
Object -> action (program.d) or property (information.txt)  

The reverse way of accessing should be possible as well:  
Normal: System/Directory/Print.d  
Reverse: Print.d/Directory/System  "./"  
Omission: Print/Directory  "./"

Files and Directories are case insensitive.  
Accessing them can be done with lowercase and a mix of uppercase letters.

Shallow directories should not include long directory names and single word names should be enforced on them.
More complex directories or projects inside Operating System can contain more descripting longer names for both files and folders.
All this is to just make project or directory usage more convenient for less experienced and more manageable for more experienced programmers.  

Interface should be a contract or a template for ensuring same structure within source files.

TODO: Make a drop-in replacement for Windows cmd.exe Command Prompt. Windows administrator should be able to paste binary into System32 folder and simply use all commands and environment of this project. 


```
├───Documentation
├───Kernel
│   ├───Boot
│   │   └───Bootloaders
│   ├───Devices
│   ├───Networking_Devices
│   └───Storage_Devices
│       └───Filesystems
├───Library
│   ├───Datatypes
│   ├───Interface
│   ├───Legacy
│   └───Standard_Library
│       ├───Aplication_Binary_Interface
│       ├───Date_and_Time
│       ├───Input_Output
│       ├───Math
│       └───Memory_Allocator
├───Programs
│   ├───Administration
│   │   ├───Groups
│   │   └───Permissions
│   ├───Configurations
│   ├───Control_Panel
│   ├───Games
│   ├───Package_Manager
│   ├───Processes
│   │   ├───Memory_Manager
│   │   └───Process_Manager
│   ├───Security
│   ├───Settings
│   ├───User_Interface
│   └───Utilities
│       ├───Formal_Math_Formula_Evaluator
│       ├───Regular_Expression_Engine
│       └───Text_Tools
├───System
│   ├───Commands
│   ├───Command_Line
│   │   ├───Console
│   │   └───Interpreter
│   ├───Compiler
│   │   └───Linker
│   ├───Development
│   │   └───Language
│   │       └───Parsers
│   │           ├───BNF_Notation
│   │           └───Recursive_Decent_Parsing
│   ├───Games
│   │   └───Text-Based
│   ├───Information
│   ├───Logs
│   ├───Network
│   │   ├───Internet
│   │   └───URL
│   ├───Startup
│   ├───Storage
│   │   ├───Directory
│   │   │   └───Tree
│   │   │       ├───Directory_Tree_Generator
│   │   │       │   ├───Depth_First_Search
│   │   │       │   ├───First research
│   │   │       │   │   └───prototypes
│   │   │       │   ├───path_traversal
│   │   │       │   └───while_method
│   │   │       ├───Natural_Sort_Order
│   │   │       ├───Path_Explorer
│   │   │       ├───Path_Parser
│   │   │       └───Recursive_Depth_First_Tree_Traversal
│   │   ├───File
│   │   ├───Filesystems
│   │   └───Search
│   └───Tools
└───Users
    ├───Administrator
    │   ├───Desktop
    │   ├───Files
    │   └───Home
    ├───Public_User
    │   ├───Guest_User
    │   └───Shared_User
    └───Regular_User
        └───Desktop
```
