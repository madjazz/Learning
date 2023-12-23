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

package disassembler

import "core:os"
import "core:strings"
import "core:fmt"

read_file_by_lines_in_whole :: proc(filepath: string) {
	data, ok := os.read_entire_file(filepath, context.allocator)
	if !ok {
		// could not read file
		return
	}
	defer delete(data, context.allocator)

	it := string(data)
	for line in strings.split_lines_iterator(&it) {
		fmt.fmt.println("%s", line)
	}
}

main :: proc () {
    read_file_by_lines_in_whole("./bin")
}
