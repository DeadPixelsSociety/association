LATEX = pdflatex

TARGETS = statuts.pdf reglement_interieur.pdf pv_assemblee_constitutive.pdf

all: $(TARGETS)

%.pdf: %.tex %.aux
	${LATEX} $<

%.aux: %.tex
	${LATEX} $<

clean:
	rm -f *.aux *.log *.toc *.lof

mrproper: clean
	rm -f $(TARGETS)
