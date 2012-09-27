Latex = $(wildcard *.tex)
Pdfs = $(Latex:.tex=.pdf)

all: $(Pdfs)

%.pdf: %.tex
	rm -f $@ mfl-resume.pdf
	latex --output-format=pdf $<
	cp $@ mfl-resume.pdf

clean:
	rm -rf *.pdf *.log *.aux
