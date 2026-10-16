#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

unsigned char shellcode[] = {
/** --------------
ADD SHELLCODE HERE 
-------------- **/
};

int main(void)
{
	size_t len = sizeof(shellcode);

	void *buf = mmap(NULL, len, PROT_READ | PROT_WRITE | PROT_EXEC,  MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

	if (buf == MAP_FAILED)
	{
		perror("[-] mmap failed");
		return 1;
	}
	
	memcpy(buf, shellcode, len);

	((void(*)(void))buf)();

	munmap(buf, len);
	printf("[+] Execution Successed\n");
	return 0;
}
