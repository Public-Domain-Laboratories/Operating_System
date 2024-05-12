// module2.d
module testmodules.subdir2.module2;
import testmodules.subdir1.module1;

void helloFromModule2() {
    import std.stdio;
    writeln("Hello from module2");
    helloFromModule1(); // Calling a function from module1
}

void main(){
    helloFromModule1();

}