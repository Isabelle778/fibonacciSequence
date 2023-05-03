.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
fibonacci DWORD 20 DUP(?)
result DWORD 0
.code
main PROC
	mov esi, OFFSET fibonacci          
	mov eax, 0
	mov ebx, 1

	mov [esi], eax                     
	add esi, TYPE fibonacci	             

	mov [esi], ebx                      
	add esi, TYPE fibonacci             
  
L2:
	mov eax, [esi-8]               
	mov ebx, [esi-4]               
	mov edx, eax
	add edx, ebx                        
	mov [esi], edx                       
	add esi, TYPE fibonacci             
loop L2

INVOKE ExitProcess,0
main ENDP
END main
