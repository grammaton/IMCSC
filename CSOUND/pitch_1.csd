<CsoundSynthesizer>
<CsOptions>

csound -3 -A -o pitch_1.aif

</CsOptions>
<CsInstruments>

sr = 48000
ksmps = 1
nchnls = 1
0dbfs = 1

	instr 1

iamp 	= ampdbfs(-16)
idur	= p3

ipch	= p4
icps	= cpspch(ipch)
	print icps

kenv	linseg 0.0, idur*0.05, 1.0, idur*0.9, 1.0, idur*0.05, 0.0 
a1	oscil	iamp*kenv, icps, 1
	out a1
	endin


</CsInstruments>
<CsScore>
;sine wave.
f 1 0 16384 10 1

i 1	0	2	8.00
i 1	+	1	8.01
i 1 	+	1	8.02
i 1 	+ 	1 	8.04
i 1 	+ 	1 	8.05
i 1 	+ 	1 	8.06
i 1 	+ 	1 	8.07
i 1 	+ 	1 	8.08
i 1 	+ 	1 	8.09
i 1 	+ 	1 	8.10
i 1 	+ 	1 	8.11
i 1 	+ 	1 	8.12
i 1 	+ 	2 	8.00

e
</CsScore>
</CsoundSynthesizer>