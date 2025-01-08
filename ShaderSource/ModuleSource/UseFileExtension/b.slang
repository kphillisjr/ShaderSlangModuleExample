// File: ModuleSource/UseFileExtension/b.slang
// Current Status: Fails to compile.
// Expected result: Should compile since "ExampleModule.slang" and ExampleModule are equivalent.
implementing "ExampleModule.slang"; // Alternate Syntax: Filename with extension in quotes.
// implementing "ExampleModule"; // Alternate Syntax: Filename without extension in quotes.
// implementing ExampleModule; // PrimarySyntax: Filename without extension

// pulls in `ModuleSource/UseFileExtension/a.slang` to module `ExampleModule`.
__include "a.slang";
namespace Use_Filename_Slang
{
	int f_b() {
		return Use_Filename_Slang::f_a();
	}
}
