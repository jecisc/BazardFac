s/\(.*\)/\U\1/
/--/d
s/BEGIN/memory_initialization_radix=16; \n
memory_initialization_vector= \n 0000/
s/MOV/00/
S/nOP/0000/
s/ZERO/0/
s/R1/1/
s/R2/2/
s/R3/3/
s/R4/4/
s/R5/5/
s/RLED/6/
s/RSW/7/
s/R7SEG/8/
s/RSRC1/9/
s/RSRC2/A/
s/RDEST/B/
s/RAM/C/
s/RDM/D/
s/CO/E/
s/RI/F/
s/PAUSE/F000/
s/MVI/2/
s/  //g

