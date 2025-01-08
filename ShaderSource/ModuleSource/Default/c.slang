// File: ModuleSource/Default/c.slang
// Current Status: Compiles
// implementing "ExampleModule.slang"; // Alternate Syntax: Filename with extension in quotes.
implementing "ExampleModule"; // Alternate Syntax: Filename without extension in quotes.
// implementing ExampleModule; // PrimarySyntax: Filename without extension

int f_c()
{
    // OK, `ModuleSource/Default/c.slang` is part of module `m` because it is `__include`'d by
    // `m.slang`.
    return f_a() + f_b();
    
}
