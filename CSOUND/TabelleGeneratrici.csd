;basic lookup table oscillator
;with envelope

<CsoundSynthesizer>
<CsOptions>

csound -3 -A -o osci_gen.aif

</CsOptions>
<CsInstruments>

sr	= 48000 ;frequenza di campionamento
kr	= 48000 ;frequenza di controllo, può essere omessa
ksmps	= 1     ;sr/kr
nchnls	= 1     ;numero di canali

	instr	1

iamp	= ampdbfs(-16)
ifreq	= 440
idur	= p3
ifn	= p4

kenv	linseg	0.0, idur/3, 1.0, idur/3, 1.0, idur/3, 0.
a1	oscil	iamp*kenv, ifreq, ifn
 	out	a1
 	endin

</CsInstruments>
<CsScore>
f1 0 16384 10 1                                          ; Sine
f2 0 16384 10 1 0.5 0.3 0.25 0.2 0.167 0.14 0.125 .111   ; Sawtooth
f3 0 16384 10 1 0   0.3 0    0.2 0     0.14 0     .111   ; Square
f4 0 16384 10 1 1   1   1    0.7 0.5   0.3  0.1          ; Pulse

i 1	0	2	1
i 1	+	2	2
i 1 	+ 	2 	3
i 1 	+ 	2 	4

e
</CsScore>
</CsoundSynthesizer>

</CsScore>
</CsoundSynthesizer>
