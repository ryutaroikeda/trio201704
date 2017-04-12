SOUNDFONT?=/usr/share/sounds/sf2/FluidR3_GM.sf2

LILY:=$(wildcard *i.ly)
MIDI:=$(LILY:.ly=.midi)
WAV:=$(LILY:.ly=.wav)

all: $(WAV) trio.pdf

%.midi: %.ly
	echo "making $@"
	lilypond trio.ly

%.wav: %.midi
	echo "making $@"
	fluidsynth -F $@ $(SOUNDFONT) $<

trio.pdf: trio.ly
	lilypond trio.ly
