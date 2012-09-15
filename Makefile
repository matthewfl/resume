Latex = $(wildcard *.tex)
Pdfs = $(Latex:.tex=.pdf)

all: $(Pdfs)

%.pdf: %.tex
	rm -f $@
	latex --output-format=pdf $<

clean:
	rm -rf *.pdf *.log *.aux
