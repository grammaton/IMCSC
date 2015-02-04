;basic lookup table oscillator

<CsoundSynthesizer>
<CsOptions>

csound -3 -A -o oscillator.aif

</CsOptions>
<CsInstruments>

sr	= 48000 ;frequenza di campionamento
kr	= 48000 ;frequenza di controllo, può essere omessa
ksmps	= 1     ;sr/kr
nchnls	= 1     ;numero di canali

	instr	1 ;simple 440hz oscillator

iamp	= ampdbfs(p4)
ifreq	= p5

a1	oscil	iamp, ifreq, 1
 	out	a1
 	endin

</CsInstruments>
<CsScore>

; One period of a sine wave
f 1	0	8192	10	1

;	at	dur	amp	ifreq
i 1	0	30	-20	440
i 1	0	30	-20	500

e

</CsScore>
</CsoundSynthesizer>
