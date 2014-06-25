<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

sr	=	48000 ;frequenza di campionamento
;kr	=	48000 ;frequenza di controllo
ksmps	=	1     ;rapporto tra sr e kr
nchnls	=	1     ;numero di canali

	instr 1

iamp 	= ampdbfs(-16)
ifreq	= p4
idur	= p3

kenv	linseg 0.0, idur*0.05, 1.0, idur*0.9, 1.0, idur*0.05, 0.0 
a1	oscil	iamp*kenv, ifreq, 1
	out a1
	endin

	instr 2

iamp 	= ampdbfs(-20)
ifreq	= p4
idur	= p3

kenv	linseg 0.0, idur*0.05, 1.0, idur*0.9, 1.0, idur*0.05, 0.0 
a1	oscil	iamp*kenv, ifreq, 2
	out a1
	endin


</CsInstruments>

<CsScore>

;one period of a sine wave
f 1	0	8192	10	1
f 2	0	16384	10	1	0.5	0.3	0.25	0.2	0.167	0.14	0.125	0.111	;dentedisega
	
		;actiontime	;dur/s	;freq
		
;battuta 1
;melody
i 1		0		1	 293.66
;harmony
i 2		0		1	 293.66

;battuta 2
;melody
i 1		1		1	 329.63
i 1		2		1	 293.66
i 1		3		1	 392.
;harmony
i 2		1		1	 329.63
i 2		1		1	 246.94
i 2		1		2	 146.83
i 2		1		3	 98.
i 2		2		1	 293.66
i 2		3		1	 246.94
i 2		3		1	 392.
i 2		3		1	 146.83

;battuta 3
;melody
i 1		4		2	 369.99
i 1		6		1	 293.66
;harmony
i 2		4		2	 261.63
i 2		4		2	 369.99
i 2		4		2	 146.83
i 2		4		3	 110.
i 2		6		1	 293.66
i 2		6		1	 146.83

;battuta 4
;melody
i 1		7		1	 329.63
i 1		8		1	 293.66
i 1		9		1	 440.
;harmony
i 2		7		1	 329.63
i 2		7		1	 261.63
i 2		7		2	 146.83
i 2		7		2	 123.47
i 2		8		1	 293.66
i 2		9		1	 440.
i 2		9		1	 261.63
i 2		9		1	 146.83
i 2		9		1	 123.47

;battuta 5
;melody
i 1		10		2	 392.
i 1		12		1	 293.66
;harmony
i 2		10		2	 392.
i 2		10		2	 246.94
i 2		10		2	 146.83
i 2		10		2	 98.
i 2		12		1	 293.66
i 2		12		1	 246.94
i 2		12		1	 196.
i 2		12		1	 98.

;battuta 6
;melody
i 1		13		1	 587.33
i 1		14		1	 493.88
i 1		15		1	 392.
;harmony
i 2		13		1	 587.33
i 2		13		2	 392.
i 2		13		2	 293.66
i 2		13		2	 196.
i 2		13		2	 123.47
i 2		14		1	 493.88
i 2		15		1	 329.63
i 2		15		1	 392.
i 2		15		1	 196.
i 2		15		1	 123.47

;battuta 7
;melody
i 1		16		1	 369.99
i 1		17		1	 329.63
i 1		18		1	 523.25
;harmony
i 2		16		1	 369.99
i 2		16		1	 293.66
i 2		16		2	 196.
i 2		16		2	 130.81
i 2		17		1	 329.63
i 2		17		1	 261.63
i 2		18		1	 523.25
i 2		18		1	 261.63
i 2		18		1	 220.
i 2		18		1	 164.81
i 2		18		1	 110.

;battuta 8
;melody
i 1		19		1	 493.88
i 1		20		1	 392.
i 1		21		1	 440.
;harmony
i 2		19		1	 493.88
i 2		19		2	 293.66
i 2		19		2	 146.83
i 2		20		1	 392.
i 2		21		1	 440.
i 2		21		1	 261.63
i 2		21		1	 185
i 2		21		1	 146.83

;battuta 9
;melody
i 1		22		2	 392.
;harmony
i 2		22		2	 392.
i 2		22		2	 246.94
i 2		22		2	 196.
i 2		22		2	 146.83
i 2		22		2	 98.
</CsScore>
</CsoundSynthesizer>
