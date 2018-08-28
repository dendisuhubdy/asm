.bss

.data
	output:
	.asciz "The processor Vendor ID is '%s' \n"

	.lcomm buffer, 13


.text

	.globl _main

	_main:

	movl $0, %eax		# define cpuid output option
	cpuid			


	movl $buffer, %edi	# put values in string
	movl %ebx, 0(%edi)
	movl %edx, 4(%edi)
	movl %ecx, 8(%edi)
	movl $0, %ecx
	movl %ecx, 12(%edi)
	
	# Now Calling printf

	subl $0x4, %esp		#padding stack :/ !
	pushl $buffer
	pushl $output
	
	
	
	call _printf		#macosx need libc  pre_
	
				# ESP is at 0xXXXXXXX0 now, 
				# with MacOS X Special stub it will be at 0xXXXXXXXC 
	
	call _exit
	nop
	
