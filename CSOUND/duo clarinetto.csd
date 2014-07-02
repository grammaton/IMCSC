<CsoundSynthesizer>

<CsOptions>

csound -3 -A -o clarinet.aif

</CsOptions>

<CsInstruments>
sr     = 44100
kr     = 4410
nchnls = 2

instr 1
  idur   = p3
  iamp   = ampdbfs(p4)
  ifenv  = 51                    ; clarinet settings:
  ifdyn  = 52                    ; amp and index envelope see flow chart
  ifq1   = cpspch(p5)*3          ; N1:N2 is 3:2, imax=5
  if1    = 1                     ; duration ca. .5 sec
  ifq2   = cpspch(p5)*2
  if2    = 1
  imax   = p6
  imin   = 2
  
     aenv  oscili   iamp, 1/idur, ifenv                ; envelope
  
     adyn  oscili   ifq2*(imax-imin), 1/idur, ifdyn    ; index
     adyn  =        (ifq2*imin)+adyn                   ; add minimum value
     amod  oscili   adyn, ifq2, if2                    ; modulator
  
     a1    oscili   aenv, ifq1+amod, if1               ; carrier
           outch 1, a1
endin

instr 2
  idur   = p3
  iamp   = ampdbfs(p4)
  ifenv  = 51                    ; clarinet settings:
  ifdyn  = 52                    ; amp and index envelope see flow chart
  ifq1   = cpspch(p5)*3          ; N1:N2 is 3:2, imax=5
  if1    = 1                     ; duration ca. .5 sec
  ifq2   = cpspch(p5)*2
  if2    = 1
  imax   = p6
  imin   = 2
  
     aenv  oscili   iamp, 1/idur, ifenv                ; envelope
  
     adyn  oscili   ifq2*(imax-imin), 1/idur, ifdyn    ; index
     adyn  =        (ifq2*imin)+adyn                   ; add minimum value
     amod  oscili   adyn, ifq2, if2                    ; modulator
  
     a1    oscili   aenv, ifq1+amod, if1               ; carrier
           outch 2, a1
endin
</CsInstruments>


<CsScore>
f1  0  2048  10  1

; envelopes
f51 0 1024  5  .0001 200 1 674 1 150 .0001       ; amplitude envelope
f52 0 1024  5  1 1024 .0001                      ; index envelope

t0 120

;	att	idur	iamp	pch	imax
i1	0	.5	-16	8.00	1
i1	+ 	.  	.      	8.01   	2
i1	. 	.  	.      	8.02   	3
i1	.  	.  	.      	8.03   	4
i1	.  	.  	.      	8.04   	5
i1	.  	.  	.      	8.05   	6
i1	.  	.  	.      	8.06   	7
i1	.  	.  	.      	8.07   	8
i1	.  	.  	.      	8.08   	9
i1	.  	.  	.      	8.09   	10
i1	.  	.  	.      	8.10   	11
i1	.  	.  	.      	8.11   	12
i1	.  	.  	.      	9.00   	13
i1	.  	.  	.      	8.00   	14


i2	0.275	.5	-16	8.00	14
i2	+ 	.  	.      	8.01   	13
i2	. 	.  	.      	8.02   	12
i2	.  	.  	.      	8.03   	11
i2	.  	.  	.      	8.04   	10
i2	.  	.  	.      	8.05   	9
i2	.  	.  	.      	8.06   	8
i2	.  	.  	.      	8.07   	7
i2	.  	.  	.      	8.08   	6
i2	.  	.  	.      	8.09   	5
i2	.  	.  	.      	8.10   	4
i2	.  	.  	.      	8.11   	3
i2	.  	.  	.      	9.00   	2
i2	.  	.  	.      	8.00   	1

</CsScore>


</CsoundSynthesizer>