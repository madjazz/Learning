# Exercise 1: Dust off that Compiler

After you have everything installed, you need to confirm that your compiler works. The easiest way to do that is to write an Odin program.

```odin
package first_program

import "core:fmt"

/* This is a comment */
proc :: main() {
    distance := 100
    // This is also a comment
    fmt.printf("You are %d miles away.\n", distance)
}
```

## Breaking it Down

Line 1: Here we declare our package. Odin programs consist of packages, which are directories of Odin files, all with the same name.

Line 3: We import the `fmt` package from the core, or standard, library. Note that `fmt` is the name of the package which we import.

Line 5: This is a multi-line comment. You can place as much text as you want between `/*` and `*/`.

Line 6: Each Odin program requires a `main` procedure as the entrypoint to a program. Here, it does not take any arguments and returns nothing, e.g. a void data type. Note that Odin uses the word procedure instead of function, which you might be more familiar with from other languages. The curly braces `{}` denote the scope of the procedure, e.g. code that is only accessible and executed within the procedure.

Line 7: This is a variable declaration. We can store values inside variables for later uses and use the `:=` syntax for declaring and assigning a value to a named variable. The Odin compiler is smart enough to infer the type used here. It is, by default, an integer of type `int`, which is pointer-sized.

Line 8: A single line comment

Line 9: We invoke the `printf` function to print a statement to the console. `%d` is used as a placeholder to indicate a numeric value. We pass the variable `distance` by value to the printf function.
