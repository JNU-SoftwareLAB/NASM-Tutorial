# how to test

```bash
gdb hello.out
disassemble _start
b _start
r
disassemble _start
ni
disassemble _start
ni
disassemble _start
ni
disassemble _start
info registers
```