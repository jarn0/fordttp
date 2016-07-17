BreakLoop=0
xmin:=-100
xmax:=100

zmin:=-100
zmax:=100

change:=30
timeout:=1000 


F4::
	x=%xmin%
	z=%zmin%
	while(z <= zmax)
	{
		while (x <= xmax){
			if (BreakLoop = 1)
				break 
			Send, {Enter}
			sleep,100
			Send /tp %x% 170 %z%
			sleep,50
			Send, {Enter}
			sleep,50
			x += %change%
			sleep, %timeout%
		}
		z += %change%
		x=%xmin%
		sleep, %timeout%
	}
	
F5::
if(BreakLoop==0){
	BreakLoop = 1
}
else{
	BreakLoop = 0
}
return