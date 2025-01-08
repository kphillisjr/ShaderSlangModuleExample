// File: ModuleSource/UseFileExtension/a.slang
// Current Status: Fails to compile.
// Expected result: Should compile since "ExampleModule.slang" and ExampleModule are equivalent.
implementing "ExampleModule.slang"; // Alternate Syntax: Filename with extension in quotes.
// implementing "ExampleModule"; // Alternate Syntax: Filename without extension in quotes.
// implementing ExampleModule; // PrimarySyntax: Filename without extension

namespace Use_Filename_Slang
{
	int f_a() {
		return 0;
	}
}
