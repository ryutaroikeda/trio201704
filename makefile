SOUNDFONT?=/usr/share/sounds/sf2/FluidR3_GM.sf2

wav: trio.wav

trio.midi: trio.ly trio-1.ly
	lilypond $<

trio.wav: trio.midi
	fluidsynth -F $@ $(SOUNDFONT) $<

.PHONY: wav
