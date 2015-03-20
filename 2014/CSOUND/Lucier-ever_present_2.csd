<CsoundSynthesizer>

<CsOptions>

csound -3 -A -o Lucier_everpresent.aif

</CsOptions>


<CsInstruments>
sr     = 192000
ksmps  = 1
nchnls = 2

;********************************************************************************* 
;********************************************************************** SLOW SWEEP
;********************************************************************************* 

	instr	1 

iamp 	= ampdbfs(p4)
idur	= p3

ksweep1	linseg cpspch(8.00), 505, cpspch(10.00), 408, cpspch(8.00)
a1	oscili	iamp, ksweep1, 1
 	outch	1, a1
 	endin


	instr	2

iamp 	= ampdbfs(p4)
idur	= p3

ksweep2	linseg cpspch(8.00), 505, cpspch(07.08), 408, cpspch(06.11), ddd, cpspch(07.08), ddd, cpspch(08.00)
a2	oscili	iamp, ksweep2, 1
 	outch	2, a2
 	endin

</CsInstruments>


<CsScore>
f 1	0	8192	10	1

;    idur iamp   pch imax

i 1	0.	505.	-12	08.00	10.00
i 1	+	408.	-12	10.00	08.00

i 2	0.	252.	-12	08.00	07.08
i 2	+	252.	-12	07.08	06.11
i 2	+	216.	-12	06.11	07.08
i 2	+	192.	-12	07.08	08.00

e


</CsScore>


</CsoundSynthesizer>
