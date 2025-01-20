mov ecx, [esp+4] ; Get ecx from stack
mov ebx, [esp+8] ; Get ebx from stack

; Check for potential overflow before calculating the address
mov eax, ebx
add eax, ecx ; Simulate address calculation
jo overflow_handler ; Jump if overflow occurs

mov eax, ecx
lea eax, [ebx + eax*4 + 8] ; Calculate address safely
jmp access_memory

overflow_handler:
; Handle overflow appropriately, e.g., raise an exception or return an error code
mov eax, -1 ; Indicate an error

access_memory:
; Access memory at the address in eax
mov edx, [eax] 
; ...rest of the code...