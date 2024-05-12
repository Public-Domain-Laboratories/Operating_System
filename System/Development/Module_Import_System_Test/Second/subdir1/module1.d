// module1.d
module subdir1.module1;
import subdir2.module2;


void helloFromModule1() {
    helloFromModule2(); // Calling a function from module2
}
