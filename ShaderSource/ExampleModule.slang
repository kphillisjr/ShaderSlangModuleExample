// Compile with:
// slangc ExampleModule.slang -o ExampleModule.slang-module
// ExampleModule.slang

// Note: All of the Following Should be the same.
#ifdef REVERSE_MODULE_ORDER
module "ExampleModule.slang"; // Alternative Syntax: Filename with extension.
module "ExampleModule";       // Alternative Syntax
module ExampleModule;         // Normal Syntax
#else
module ExampleModule;         // Normal Syntax
module "ExampleModule";       // Alternative Syntax
module "ExampleModule.slang"; // Alternative Syntax: Filename with extension.
#endif

// OK, a file including itself is allowed and has no effect.
__include ExampleModule;
__include "ExampleModule";
__include "ExampleModule.slang";

// Current result: The following files will fail to compile when REVERSE_MODULE_ORDER is defined.
// expected result: No error.
__include "ModuleSource/Default/b";       // Pulls in file b (alternate syntax), and transitively pulls in file a.
__include "ModuleSource/Default/c.slang"; // Pulls in file b (alternate syntax), and transitively pulls in file a.

// Current result: The following files will fail to compile when REVERSE_MODULE_ORDER is not defined.
// expected result: No error when REVERSE_MODULE_ORDER is not defined.
__include "ModuleSource/UseFileExtension/b"; // Pulls in file c, specifying the full file name.
__include "ModuleSource/UseFileExtension/c.slang"; // Pulls in file c, specifying the full file name.


int test() {
    int result = f_a();
    result += f_b();
    result += f_c();
    return result;
}

int test_using_filename() {
    int result = 0;
    result += Use_Filename_Slang::f_a();
    result += Use_Filename_Slang::f_b();
    result += Use_Filename_Slang::f_c();
    return result;
}

public int testExampleModule()
{
    int resulta = test();
    int resultb = test_using_filename();
    return resulta + resultb;
}
