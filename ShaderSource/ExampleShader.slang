// Compile with:
// slangc ExampleShader.slang -target cpp -o ExampleShader.cpp
// ExampleShader.slang
import ExampleModule;

export __extern_cpp int main()
{
    int result = testExampleModule();
    if (result < 0) return -1;
    if (0 < result) return 1;
    return 0;
}
