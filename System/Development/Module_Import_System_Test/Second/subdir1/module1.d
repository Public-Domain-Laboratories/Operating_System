// module1.d
module testmodules.subdir1.module1;
import testmodules.subdir2.module2;


void helloFromModule1() {
    helloFromModule2(); // Calling a function from module2
}
