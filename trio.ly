\version "2.18.2"

\include "trio-i.ly"
\include "trio-iii.ly"

\book {
	\header {
		title = "Trio"
	}
	\score {
		\movement_i
		\layout {}
	}
	%{
	\score {
		\movement_iii
		\layout{}
	}
	%}
}

\book {
	\bookOutputSuffix "i"
	\score {
		\movement_i
		\midi {}
	}
}
%{
\book {
	\bookOutputSuffix "iii"
	\score {
		\movement_iii
		\midi {}
	}
}
%}
