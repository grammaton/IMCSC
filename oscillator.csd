;basic lookup table oscillator

<CsoundSynthesizer>
<CsOptions>

;csound -s -d -odevaudio -b4096 -B4096 

</CsOptions>
<CsInstruments>

sr	=	48000 ;frequenza di campionamento
kr	=	48000 ;frequenza di controllo 
ksmps	=	1     ;sr/kr
nchnls	=	1     ;numero di canali

	instr	1     ;simple 440hz oscillator

;etic.  gen.    amp.  freq. 
a1	oscil	10000, p5, p4
 	out	a1
 	endin

</CsInstruments>
<CsScore>

; One period of a sine wave
f 1	0	8192	10	1

;      at      dur           freq
i 1	0	30	1     100
i 1	3.5	6.5	1     106
i 1    10       10      1     150
i 1    20       10      1     206

e

</CsScore>
</CsoundSynthesizer>
