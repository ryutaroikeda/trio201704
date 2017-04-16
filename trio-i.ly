global_i = {
	\time 4/4
	\tempo 4 = 70
}

violin_i_i = \new Voice \relative c'' {
	r1 |
	r8 g8 c8 b8 a8 d16 e16 d8. c16 |
	b4 g4 c4. b16 a |
	g8 g16 a g8 f e a4 g8 |
	f8 f16 g f8 e d g4 f8 |
	e8 r r e a4 b |
	c8 c16 d c8 e f2~ |
	f8 g,16 a b8 c16 d e8 c f e |
	a8 f bes a gis e a4~ |
	a16 c b a gis4 a8 c, f e |
	d8 g16 a16 g8. f16 e4 c4~ |
	c8 bes16 a16 bes8 g16 a16 bes4. a16 g16 |
	a4. a16 g16 fis4. g16 fis16 |
	g8 d4 d8 ees8 g8 c bes |
	a8 d16 e16 d8 c8 b8 e16 f16 e8 d8 |
	c2~ c8 e d c |
	b8 d,8 g8 f8 e8 a16 b16 a8. g16 |
	fis4. g16 fis16 g4. gis8 |
	a2~ a8 g16 fis16 g4~ |
	g16 b a g fis8. g16 g8 r8 r4 |
	r4 r4 r8 a8 d8 c8 |
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
	g8 r r c f e d4 |
	c8 g' c b a d16 e d8. c16 |
	b2~ b8 b a g |
	f8 e' d c~ c b16 gis a8 b |
	c8. d16 b8. a16 a8 r r4 |
	r1 |
	r2 r8 g16 f16 e4~ |
	e8 c16 d16 ees4. a,16 b16 c4~ |
	c8 bes16 a16 bes16 g16 a16 bes16 c8 d8 ees8 c8 |
	d8 c'8 b8 a8 g8 d'8 c8 b8 |
	a8 e a g fis b16 c b8. a16 |
	g2~ g8 g fis e |
	d8 a8 d8 c8 b8 e16 f16 e8. d16 |
	c8 g'8 fis8 e8 d4. c8 |
	b8 c16 b16 a4 b8 r8 r4 |
	r4 c4~ c8 c b a |
	r8 d8 g8 f8 e8 a16 bes16 a8. g16 |
	fis4. g16 f16 e4 c |
	f4. g16 f16 e2 \bar "|."
}

cello_i = \new Voice \relative c {
	r1 |
	r1 |
	r8 g8 c8 b8 a8 d16 e16 d8. c16 |
	b8 r8 r16 g a b c d e8. c16 d e |
	f16 e f8 r16 f, g a b c d8. g,16 a b |
	c8 c f e d g16 a g8. f16 |
	e8 r8 r4 r2 |
	g8 f e d c4~ c16 c d e |
	f4. f8 e d c d |
	e8 d e e, a r8 r4 |
	r2 r8 c8 f8 e8 |
	d8 g16 a16 g8. f16 e8 c8 d8 e8 |
	f8 a,8 bes8 c8 d8 c8 b8 a8 |
	g8 g'4 f8 ees8 d8 c8 a'16 g16 |
	fis8 d8 e8 fis8 g8 e8 fis8 gis8 |
	a8 g8 fis8 e8 d b c d |
	e8 f e8 d8 cis8 a8 b8 cis8 |
	d8 r r a' g r r b |
	a8 e8 a8 g8 fis8 b16 c16 b8 a8 |
	d,2 g,8 d'8 g8 f8 |
	e8 a16 b16 a8. g16 fis8 d8 e8 fis8 |
	g16 fis g a bes8 a8 g8 cis,8 f8 e8 |
	d8 g16 a16 g4~ g8 c,8 f8 e8 |
	d8 g16 a16 g8 g,8 c,2 \bar "|."
}

movement_i = \score {
	<<
		\new StaffGroup <<
			\new Staff \with {
				midiInstrument = #"clarinet"
				instrumentName = #"Violin I"
			} <<
				\clef treble
				\global_i \violin_i_i
			>>
			\new Staff \with {
				midiInstrument = #"clarinet"
				instrumentName = #"Violin II"
			} << 
				\clef treble
				\global_i \violin_ii_i
			>>
			\new Staff \with {
				midiInstrument = #"clarinet"
				instrumentName = #"Cello"
			} << 
				\clef bass
				\global_i \cello_i
			>>
		>>
	>>
}
