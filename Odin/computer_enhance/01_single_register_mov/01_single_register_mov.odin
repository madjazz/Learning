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
import "core:bufio"

main :: proc () {
    f, ferr := os.open("./bin")
    if ferr != 0 {
		fmt.println("Could not read file")
		return
	}
    defer os.close(f)

    r: bufio.Reader
    buffer: [2]byte

    bufio.reader_init_with_buf(&r, os.stream_from_handle(f), buffer[:])
    defer bufio.reader_destroy(&r)

    for {
        value, err := bufio.reader_read_byte(&r)
        if err != nil {
			break
		}
        fmt.printf("%#08b\n", value)
    }
}
