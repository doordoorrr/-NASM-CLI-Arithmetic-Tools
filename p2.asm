    BITS 32
    SECTION .data 

    title db 'The Multiplication Program', 0xa 
    len equ $ - title

    prompt db 'Please enter a single digit number:', 0xa 
    leng equ $ - prompt

    closing db 'The answer is:', 0xa 
    length equ $ - closing

    SECTION .bss 
        num1 RESB 2 
        num2 RESB 2 
        product3 RESB 5

    SECTION .text
    GLOBAL _start	
    _start:	

    ;PRINT TIMER
    mov edx,len 
    mov ecx,title
    mov	ebx,1       
    mov	eax,4       
    int	0x80       
    
    ;PROMPT 1 
    mov edx,leng
    mov ecx,prompt
    mov	ebx,1     
    mov	eax,4       
    int	0x80       

    ;read in first num
        mov eax,3 ; read
        mov ebx, 0
        mov ecx,num1
        mov edx, 2 
        int 80h 

    ;PROMPT 2 
    mov edx,leng
    mov ecx,prompt
    mov	ebx,1     
    mov	eax,4       
    int	0x80       

    ;read in first num
        mov eax,3 ; read
        mov ebx, 0
        mov ecx,num2
        mov edx,2 
        int 80h 



    xor ax,ax ;ZERO OUT 

    ;Convert num1 from string to integer
        mov al, [num1]       ; Load first character into AL
        sub al, '0'          ; Convert from ASCII to integer

        mov bl, [num2]
        sub bl, '0'
        
        imul bl ; AL by BL 
        
        add al, '0'
        mov [product3], al
        
    ;PRINT 'Your answer is:  '
    mov	edx,length     ;message length
    mov	ecx,closing     ;message to write
    mov	ebx,1     
    mov	eax,4       
    int 0x80


    mov	edx,1     ;message length
    mov	ecx,product3     ;message to write
    mov	ebx,1     
    mov	eax,4       
    int 0x80


    mov al,02h     ;
        
        
    ;end program 
    mov	eax,1       ;system call number (sys_exit)
    int	0x80       


