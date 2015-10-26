#include <stdio.h>

// This is a basic program which can be used to examine shellcode.
// Example shellcode is egg hunting shellcode for w00tw00t.
// char shellcode[] = "\x66\x81\xca\xff\x0f\x42\x52\x6a\x02\x58\xcd\x2e\x3c\x05\x5a\x74\xef\xb8\x77\x30\x30\x74\x8b\xfa\xaf\x75\xea\xaf\x75\xe7\xff\xe7";
char shellcode[] = "Place your shellcode here";

int main(){
 // Executes the shellcode
 (*(void(*)()) shellcode)();
 
 return 0;
}
