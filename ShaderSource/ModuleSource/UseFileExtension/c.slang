// File: ModuleSource/UseFileExtension/c.slang
// Current Status: Fails to compile.
// Expected result: Should compile since "ExampleModule.slang" and ExampleModule are equivalent.
implementing "ExampleModule.slang"; // Alternate Syntax: Filename with extension in quotes.
// implementing "ExampleModule"; // Alternate Syntax: Filename without extension in quotes.
// implementing ExampleModule; // PrimarySyntax: Filename without extension

namespace Use_Filename_Slang
{
    int f_c()
    {
        // OK, `c.slang` is part of module `m` because it is `__include`'d by
        // `m.slang`.
        int result = Use_Filename_Slang::f_a();
        result -= Use_Filename_Slang::f_b();
        /* This should return 0 */
        return result;
    }
}
