
![oval_smaller](https://github.com/Public-Domain-Laboratories/Operating_System/assets/21064622/6d574770-916a-4ed8-befb-d4adc7c61312)

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
Reverse: Print.d/Directory/System  "./"  
Omission: Print/Directory  "./"

Files and Directories are case insensitive.  
Accessing them can be done with lowercase and a mix of uppercase letters.

Interface should be a contract or a template for ensuring same structure within source files.

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
