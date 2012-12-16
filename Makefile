FILENAME  = document
TEX       = $(FILENAME).tex
IDX       = $(FILENAME).idx
DVI       = $(FILENAME).dvi
PDF       = $(FILENAME).pdf

distclean:
	make clean
clean:
	rm *.aux *.dvi *.idx *.ilg *.ind *.log *.out *.toc *~ $(PDF)
