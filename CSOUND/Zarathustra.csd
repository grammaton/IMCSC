<CsoundSynthesizer>
<CsOptions>

csound -3 -A -o Zarathustra.aif

</CsOptions>
<CsInstruments>

sr = 48000
ksmps = 1
nchnls = 1
0dbfs = 1

	instr 1

;inizio variabili

iamp 	= ampdbfs(p4)
idur	= p3

;ipch	= p5
icps	= cpspch(p5)
	print icps

kenv	linseg 0.0, idur*0.05, 1.0, idur*0.9, 1.0, idur*0.05, 0.0 
a1	oscil	iamp*kenv, icps, 1
	out a1
	endin


</CsInstruments>
<CsScore>

; One period of a sine wave
f 1	0	8192	10	1

;	at	dur	amp	ifreq
i 1	0	30	-20	7.00 ;130.1 C3

i 1	0	14	-20	8.00 ;261.6 C4
i 1	2	12	-20	8.07 ;392   G4

i 1	4	10	-20	9.00 ;523.3 C5
i 1	16	14	-20	8.00 ;261.6 C4
i 1	18	12	-20	8.07 ;392   G4
i 1	20	10	-20	9.00 ;523.3 C5

i 1	7.4	6.6	-12	9.04 ;1318.5 E6
i 1	8	6	-12	9.03 ;622.3  Eb5
</CsScore>
</CsoundSynthesizer>