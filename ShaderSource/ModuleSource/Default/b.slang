// File: ModuleSource/Default/b.slang
// Current Status: Compiles
// implementing "ExampleModule.slang"; // Alternate Syntax: Filename with extension in quotes.
// implementing "ExampleModule"; // Alternate Syntax: Filename without extension in quotes.
implementing ExampleModule; // PrimarySyntax: Filename without extension

__include a; // pulls in `a` to module `m`.

int f_b() {
	return f_a();
}
