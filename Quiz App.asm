org 100h

.model small
.stack 100h
.data 

msg db 09h ,09h,"=========================================",0Ah ,0Dh, 09h, 09h, 09h, 09h, "QUIZ APP",0Ah ,0Dh ,09h ,09h,"========================================= $" 

msg1 db "Rules: ",0Ah ,0Dh ,"$"
msg2 db "+1 Point For Each Correct Answer! ",0Ah ,0Dh ,"$"
msg3 db "-1 Point For Each Wrong Answer! ",0Ah ,0Dh ,"$" 
msg4 db "Please Enter To Start The Quiz!! ",0Ah ,0Dh ,"$"

rht db " Right Answer.... $"
wrn db " Wrong Answer.... $"   
 
que1 db "1: Standard ASCII character set have ___ range.$"
op1 db "a) 0 to 127       b) 0 to 65535       c) 0 to 255       d) None of them $"    
que2 db "2: The instructions like MOV or ADD are called as ___ $"
op2 db "a) OP-Code        b) Operators      c) Commands         d) None of them $"  
que3 db "3: In Assembly, Single-line comments begin with ___ $"
op3 db "a) :             b) ;              c) /                d) // $"   
que4 db "4: The last statement of the source program should be ___ $"
op4 db "a) Stop           b) Return         c) OP               d) End $" 
que5 db "5: Binary value 00001001 take ____ bits in memory $"
op5 db "a) 6              b) 8              c) 7                d) 9 : $" 

comp db "You have successfully completed your quiz.. $"
point db "Your Total Point: $"
again db "Press '1' To Re-Attempt Quiz Or '0' to Exit: $" 
dash db "========================================= $"
exit db 09h,"*** THANK YOU!! ***$"                                                              

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, msg offset
    mov ah, 9
    int 21h
    
    start:
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
     
        mov dx, msg1 offset  ;msg1 for Heading   
        mov ah, 9
        int 21h
        
        mov dx, msg2 offset  ;msg2 rules
        mov ah, 9
        int 21h
        
        mov dx, msg3 offset  ;msg3 rules
        mov ah, 9
        int 21h  
     
        mov dx, msg4 offset  ;msg4 Enter to start quiz
        mov ah, 9
        int 21h
        
        mov ah, 1
        int 21h 
        
        cmp al, 0Dh
        je Ques1   
        jne start
        
    
    Ques1:              ;Label For Question: 1 
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
     
        mov cx, 0
    
        mov dx, que1 offset
        mov ah, 9
        int 21h
    
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dx, op1 offset
        mov ah, 9
        int 21h 
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov ah, 1 
        int 21h
        
        cmp al, 'c'
        je right1
        jmp wrong1
    
    
    right1:                 ;Print Rght Answer
        mov dx, rht offset
        mov ah, 9
        int 21h 
        
        inc cx
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        jmp Ques2
        
    wrong1:                 ;Print Wrong Answer 
        mov dx, wrn offset
        mov ah, 9
        int 21h
        
        dec cx
       
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
            
    Ques2:                  ;Label For Question: 2 
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
         
        mov dx, que2 offset
        mov ah, 9
        int 21h
         
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dx, op2 offset
        mov ah, 9
        int 21h 
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
                
        mov ah, 1
        int 21h
        
        cmp al, 'a'
        je right2
        jmp wrong2
    
    right2:                 ;Print Rght Answer
        mov dx, rht offset
        mov ah, 9
        int 21h 

        inc cx      
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        jmp Ques3
        
    wrong2:                 ;Print Wrong Answer
        mov dx, wrn offset
        mov ah, 9
        int 21h
        
        dec cx 
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
    
    Ques3:                  ;Label For Question: 3 
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
         
        mov dx, que3 offset
        mov ah, 9
        int 21h
         
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dx, op3 offset
        mov ah, 9
        int 21h 
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
                
        mov ah, 1
        int 21h
        
        cmp al, 'b'
        je right3
        jmp wrong3
                            ;Print Rght Answer
    right3:    
        mov dx, rht offset
        mov ah, 9
        int 21h 
               
        inc cx               
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        jmp Ques4
        
    wrong3:                 ;Print Wrong Answer
        mov dx, wrn offset
        mov ah, 9
        int 21h
        
        dec cx
       
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
    
    Ques4:                  ;Label For Question: 4 
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
         
        mov dx, que4 offset
        mov ah, 9
        int 21h
         
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dx, op4 offset
        mov ah, 9
        int 21h 
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
                
        mov ah, 1
        int 21h
        
        cmp al, 'd'
        je right4
        jmp wrong4
    
    right4:                 ;Print Rght Answer
        mov dx, rht offset
        mov ah, 9
        int 21h
        
        inc cx 
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        jmp Ques5
        
    wrong4:                 ;Print Wrong Answer
        mov dx, wrn offset
        mov ah, 9
        int 21h
        
        dec cx 
       
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
    
    Ques5:                  ;Label For Question: 5 
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
         
        mov dx, que5 offset
        mov ah, 9
        int 21h
         
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dx, op5 offset
        mov ah, 9
        int 21h 
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
                
        mov ah, 1
        int 21h
        
        cmp al, 'b'
        je right5
        jmp wrong5
    
    right5:                 ;Print Rght Answer
        mov dx, rht offset
        mov ah, 9
        int 21h
        
        inc cx  
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        jmp pass
    
    wrong5:                 ;Print Wrong Answer
        mov dx, wrn offset
        mov ah, 9
        int 21h
        
        dec cx 
    
    pass:                   ;Label For Result
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
    
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
    
        mov dx, comp offset
        mov ah, 9
        int 21h  
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dx, point offset
        mov ah, 9
        int 21h
        
        add cx, 48 
        mov dx, cx
        mov ah, 2
        int 21h
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
               
        mov dx, again offset
        mov ah, 9
        int 21h 
        
        mov ah, 1 
        int 21h 
        
        cmp al, '1'
        je start
        cmp al, '0'
        je ext
    
    ext:                    ;Label For Exit
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dx, dash offset
        mov ah, 9
        int 21h 
        
        mov dl, 0Ah
        mov ah, 2
        int 21h
        mov dl, 0Dh
        mov ah, 2
        int 21h
        
        mov dx, exit offset
        mov ah, 9
        int 21h
        
        mov ah, 4ch
        int 21h
    
main endp
end main