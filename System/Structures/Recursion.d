void recursion(int recursive_parameter=0){

    writeln("Hello D");
    
    if (recursive_parameter < 10) {
        recursion(recursive_parameter + 1); // Recursive call
    }
}

import std;
void main() => recursion();
 
