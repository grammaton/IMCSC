<CsoundSynthesizer>

<CsOptions>

csound -3 -A -o Lucier_jonHiggins.aif

</CsOptions>


<CsInstruments>
sr     = 48000
kr     = 1
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


;********************************************************************************* 
;********************************************************************** SLOW SWEEP
;********************************************************************************* 


	instr	2 ;simple 440hz oscillator

iamp 	= ampdbfs(p4)
idur	= p3

icpsa	= cpspch(p5)
icpsb	= cpspch(p6)

;kenv	linseg 0.0, idur*0.05, 1.0, idur*0.9, 1.0, idur*0.05, 0.0 
ksweep	linseg icpsa, idur, icpsb
a2	oscili	iamp, ksweep, 1
 	outch	2, a2
 	endin

</CsInstruments>


<CsScore>
f 1	0	8192	10	1

; envelopes
f51 0 1024  5  .0001 200 1 674 1 150 .0001       ; amplitude envelope
f52 0 1024  5  1 1024 .0001                      ; index envelope


;    idur iamp   pch imax
i 1	30	60	-18	7.02	4
i 1	120	60	-18	7.05	4
i 1	210	60	-18	7.07	4
i 1	300	60	-18	7.11	4
i 1	390	60	-18	8.03	4
i 1	480	30	-18	8.06	4
i 1	510	30	-18	8.05	4

i 2	0	30	-12	7.00	7.01
i 2	+	.	.	7.01	7.02
i 2	+	.	.	7.02	7.03
i 2	+	.	.	7.03	7.04
i 2	+	.	.	7.04	7.05
i 2	+	.	.	7.05	7.06
i 2	+	.	.	7.06	7.07
i 2	+	.	.	7.07	7.08
i 2	+	.	.	7.08	7.09
i 2	+	.	.	7.09	7.10
i 2	+	.	.	7.10	7.11
i 2	+	.	.	7.11	8.00

i 2	+	.	.	8.00	8.01
i 2	+	.	.	8.01	8.02
i 2	+	.	.	8.02	8.03
i 2	+	.	.	8.03	8.04
i 2	+	.	.	8.04	8.05
i 2	+	.	.	8.05	8.06
i 2	+	.	.	8.06	8.07
i 2	+	.	.	8.07	8.08
i 2	+	.	.	8.08	8.09
i 2	+	.	.	8.09	8.10
i 2	+	.	.	8.10	8.11
i 2	+	.	.	8.11	9.00

i 2	+	.	.	9.00	9.01
i 2	+	.	.	9.01	9.02
i 2	+	.	.	9.02	9.03
i 2	+	.	.	9.03	9.04
i 2	+	.	.	9.04	9.05
i 2	+	.	.	9.05	9.06
i 2	+	.	.	9.06	9.07
i 2	+	.	.	9.07	9.08
i 2	+	.	.	9.08	9.09
i 2	+	.	.	9.09	9.10
i 2	+	.	.	9.10	9.11
i 2	+	.	.	9.11	10.00

i 2	+	.	.	10.00	10.01
i 2	+	.	.	10.01	10.02
i 2	+	.	.	10.02	10.03

e
</CsScore>


</CsoundSynthesizer>
;[winxound_bookmarks,52]