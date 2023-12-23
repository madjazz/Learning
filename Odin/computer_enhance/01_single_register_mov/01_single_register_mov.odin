/*
Homework:
Write a disassembler for the following:

bits 16
mov cx, bx
*/

/*
Solution Sketch:

1. Load binary into memory (IO)
2. Decode MOV instruction
*/

package single_register_mov

import "core:fmt"
import "core:os"

main :: proc () {
    f, ferr := os.open("./bin")
    if ferr != 0 {
		fmt.println("Could not read file")
		return
	}
    defer(os.close(f))
    fmt.println("File read")
}
