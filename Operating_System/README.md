Operating System Root folder

Overview of the operating system.
* [Kernel](./Kernel/) - Automatic Computer Resource Manager.
* [Library](./Library/) - System Library and Interfaces of [Operating_System](./).
* [System_Tools](./System_Tools/) - Tools for managing, inspecting and recovering [Operating_System](./).
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
Reverse: Print.d/Directory  

```
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
```
