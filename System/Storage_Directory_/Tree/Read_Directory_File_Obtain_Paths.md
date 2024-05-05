To obtain paths and make a list of paths reading a raw directory file in binary might be necessary.  

A higher level functions might be used for legacy operating systems like Windows and Linux.  

It is labor intesive to find/research/reprogram the right directory file implementations for each operating system  
without breaking the directory files that are in binary.  
 


If D language already provides lower level access to Directory files.
It is best to check the implementation source code and improve it.  

Only use lower level functions of D langauge. Higher level functions might be poluted with additional unecessary functionality.  
Or could provide with instability if source code is edited by less knowledgeable programmers.

Maybe a simple cd and readdir of C language might be enough.   
But the same possibly already implemented in D Language library and should be reused.  
https://unix.stackexchange.com/questions/178651/how-does-one-inspect-the-directory-structure-information-of-a-unix-linux-file/178680#178680  

It is safer and more standard to contribute to D and reuse D system library code.


Today: use D Library Lower functions.  
Future: Reimplement for each legacy operating system.  
Far future: Research each operating system and provide binary access without breaking the Directory file.  
