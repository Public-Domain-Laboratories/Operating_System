/*
	Create <operation> <type>      - Basic operating system's utility for creating Entities and Objects.
	Create File   "./Filename.txt" - operation for creating files in a file system.
	Create Folder "./FolderName"   - operation for creating folders in a file system.
	Create Link   "./FileName.txt"     - operation for creating links in a file system. (Filename.lnk)
	
	Advanced usage:
		Create Link   "./FileName.txt" "./folder/link-shortcut.lnk"
	
	Examples:
		Create File "./Filename.txt"
		Create Folder "./Foldername"
		Create Link "./Foldername" "./new.lnk" 
*/


// https://forum.dlang.org/post/ddbnkounxvwvjrqicumz@forum.dlang.org
// dmd Create_File.d ./WindowsAPI/Create_File.d

//import Operating_System.Command_Line.Create_File;

module Command_Line.Create;

version(Linux) {
	version(X86) import LinuxAPI.userspace_Create_File;
}

version(Windows) {
	version(Win32) import WindowsAPI.win32_Create_File;
}

/*
returns:
  Windows: win32 system error code.
  Linux: system error level.
  
returns 0:
	Everything was successfull.
*/


//commands["File"] = "Create a file command.";

// Targets for compile time reflection.
// Gathers information about existing commands in this program.
void command(string register_command){}

string[string] commands_list;
string addCommand(string command, string description){
	if (command !in commands_list) { 
		//writeln("Registering a new command: ", command);
		commands_list[command] = description; //Keeping track of available commands. // Assigments are not allowed in IF conditionals
		return command;
	}	
	
	return null;
	// Add to Associative array
	// return associative array name as string
	// compare the string to the args

}


// Need arguments of function calls
// DOES NOT WORK WITHOUT CLASSES the whole project must be converted to object oriented one
/* TODO: ADD introspection into commands, extension for both compile time and a way to add functions at runtime*/
@trusted int main(string[] args){
	//write(""); 
	// Bug not showing the rest of the text without this.
	// Associative Array of Commands and their Description.
	//string[string] commands_list = [
	//	"File":"Creates new file."
	//];
	
	//addCommand("Creates", "Command to create things");

	import std.string : toStringz;        // cannot be called from  @nogc functions
	import std.utf : toUTF16z, toUTF16;        // cannot be called from  @nogc functions
	
	if (args.length > 2) {  // Add key to Associative Array without assignment operator in D language. (Add key to associative array -  inside if conditional) if (args[1] == command_list.add("File", Creates new file) Add Key and compare at the same time
		
		// The command must be added always, not only when the argument is used.
		if (args[1] == addCommand("File", "Create a file command.")) { // How to get the key when using key. Compare string to a specific key name. (Not the value of the key) Check if string is the specific key name in Associative Array.

			return Function_Create_New_File(args[2].toUTF16z);
			
		} 
		
	} 
	command("test");
	command("test");
	command("test");
	command("test");
	

	import std.traits;
	writeln( __traits(allMembers, mixin(__MODULE__)));
	foreach(memberss; __traits(allMembers, mixin(__MODULE__))){
		write(" ", isSomeFunction!(mixin(memberss)));
		writeln(" \t", fullyQualifiedName!(mixin(memberss)));
		
	}
	
	//writeln( __traits(parameters));
	import std.range;
	//writeln(__FILE__," Error: \"", args[1],"\" operation does not exist.");
	writeln(" ____________________________________________________________");
	writeln(" Create <operation>", "\tThere are ", commands_list.length, " operations available.");
	writeln("       |Operation\t   Description");
	int index = 0;
	foreach (command, description; commands_list) {
		writefln("       |%s  %s\t      %s  ", index, command,  description); // index of the key in associative array
		index++;
	}

	
	return 1;

}

 import std.stdio;
 
 //		if (args[1] in commands_list) { 