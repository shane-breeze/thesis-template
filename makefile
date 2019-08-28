.PHONY: clean

DOCNAME = thesis
LATEX = pdflatex
BIBTEX = bibtex

thesis.pdf: $(TEXSOURCES) references.bib
	@rm -f $(DOCNAME).{toc,lof,lot,bbl,blg,log,out}
	$(LATEX) $(DOCNAME)
	$(BIBTEX) $(DOCNAME)
	$(LATEX) $(DOCNAME)
	$(LATEX) $(DOCNAME)
	@rm -f $(DOCNAME).{toc,lof,lot,bbl,blg,log,out}

clean:
	@rm -f $(DOCNAME).{toc,lof,lot,bbl,blg,log,out,pdf}
