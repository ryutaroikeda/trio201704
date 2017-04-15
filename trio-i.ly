global_i = {
	\time 4/4
	\tempo 4 = 60
}

violin_i_i = \new Voice \relative c'' {
	r1 |
	r8 g8 c8 b8 a8 d16 e16 d8. c16 |
	b4 g4 c4. b16 a |
	g8 g16 a g8 f e a4 g8 |
	f8 f16 g f8 e d g4 f8 |
	e8 c' f e d c b4~ |
	b8 c16 b c8 e f2~ |
	f8 r4 c16 d e8 c f e |
	a8 f bes a gis e a r |
	r2 a8 c, f e |
	d8 g16 a16 g8. f16 e4 c4~ |
	c8 bes16 a16 bes8 g16 a16 bes4. a16 g16 |
	a4. a16 g16 fis4. g16 fis16 |
	g4. f8 ees8 g8 c8 bes8 |
	a8 d16 e16 d8 c8 b8 e16 f16 e8 d8 |
	c8 e8 a8 g8 fis8 r8 r4 |
	r8 d,8 g8 f8 e8 a16 b16 a8. g16 |
	fis4. g16 fis16 g4. gis8 |
	a2~ a8 g16 fis16 g4~ |
	g16 fis16 g16 a16 fis8. g16 g8 r8 r4 |
	r4 c4~ c8 a8 d8 c8 |
	b8 e16 f16 e8. d16 cis4. cis8 |
	d8 c4 bes8 c8 bes8 a8 g8 |
	a4 b4 c2 \bar "|."
}

violin_ii_i = \new Voice \relative c' {
	r8 c8 f8 e8 d8 g16 a16 g8. f16 |
	e4. d8 c4 fis |
	g8 f e4 g4 fis |
	g8 r r4 c,8 c16 d c8 b |
	a8 d4 c8 b b16 c b8 a |
	g8 r r4 r8 a' g f |
	e8 g c b a d16 e d8. c16 |
	b8 g16 a b4 r8 b a g |
	f8 r8 r4 r2 |
	r1 |
	r1 |
	r2 r8 g16 f16 e4~ |
	e8 c16 d16 ees4. a,16 b16 c4~ |
	c8 bes16 a16 bes16 g16 a16 bes16 c8 d8 ees8 c8 |
	d8 c8 b8 a8 g8 d'8 c8 b8 |
	a2~ a8 a'8 g8 fis8 |
	g2 e2 |
	r8 a,8 d8 c8 b8 e16 f16 e8. d16 |
	c8 g'8 fis8 e8 d4. c8 |
	b8 c16 b16 a4 b8 r8 r4 |
	r1 |
	r8 d8 g8 f8 e8 a16 bes16 a8. g16 |
	fis4. g16 f16 e4. c8 |
	f4. g16 f16 e2 \bar "|."
}

cello_i = \new Voice \relative c {
	r1 |
	r1 |
	r8 g8 c8 b8 a8 d16 e16 d8. c16 |
	b8 r8 r16 g a b c d e8. c16 d e |
	f16 e f8 r16 f, g a b c d8. g,16 a b |
	c4 r8 c f e d4 |
	c8 r8 r4 r2 |
	r8 f e d c r8 r4 |
	r8 e d c b d c d |
	e8 a, e' e, a r8 r4 |
	r2 r8 c8 f8 e8 |
	d8 g16 a16 g8. f16 e8 c8 d8 e8 |
	f8 a,8 bes8 c8 d8 c8 b8 a8 |
	g8 g'4 f8 ees8 d8 c8 a'16 g16 |
	fis8 d8 e8 fis8 g8 e8 fis8 gis8 |
	a8 g8 fis8 e8 d4 r4 |
	g8 f8 e8 d8 cis8 a8 b8 cis8 |
	d8 r4 a'8 g8 r4 b8 |
	a8 e8 a8 g8 fis8 b16 c16 b8 a8 |
	d,2 g,8 d'8 g8 f8 |
	e8 a16 b16 a8. g16 fis8 d8 e8 fis8 |
	g8 a8 g8 f8 e8 cis8 f8 e8 |
	d8 g16 a16 g4~ g8 c,8 f8 e8 |
	d8 g16 a16 g8 g,8 c,2 \bar "|."
}

movement_i = \score {
	<<
		\new StaffGroup <<
			\new Staff \with {
				midiInstrument = #"pizzicato strings"
				instrumentName = #"Violin I"
			} <<
				\clef treble
				\global_i \violin_i_i
			>>
			\new Staff \with {
				midiInstrument = #"pizzicato strings"
				instrumentName = #"Violin II"
			} << 
				\clef treble
				\global_i \violin_ii_i
			>>
			\new Staff \with {
				midiInstrument = #"pizzicato strings"
				instrumentName = #"Cello"
			} << 
				\clef bass
				\global_i \cello_i
			>>
		>>
	>>
}
