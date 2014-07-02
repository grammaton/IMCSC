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
  iamp   = p4
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

;	att	idur	iamp	pch	imax
i1	0	.5	8000	8.00	4
i1	+ 	.  	.      	8.01   	.
i1	. 	.  	.      	8.02   	.
i1	.  	.  	.      	8.03   	.
i1	.  	.  	.      	8.04   	.
i1	.  	.  	.      	8.05   	.
i1	.  	.  	.      	8.06   	.
i1	.  	.  	.      	8.07   	.
i1	.  	.  	.      	8.08   	.
i1	.  	.  	.      	8.09   	.
i1	.  	.  	.      	8.10   	.
i1	.  	.  	.      	8.11   	.
i1	.  	.  	.      	9.00   	.
i1	.  	.  	.      	8.00   	.

</CsScore>


</CsoundSynthesizer>