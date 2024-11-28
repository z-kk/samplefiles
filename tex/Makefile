NAME = sample.pdf
SRCS = hoge.sty vim.tex sample.png
LATEX = platex
DVIPDF = dvipdfmx

all: $(NAME)

%.pdf: %.dvi
	$(DVIPDF) $<

%.dvi: %.tex $(SRCS)
	$(LATEX) -interaction=batchmode $<
	$(LATEX) -interaction=batchmode $<

clean:
	rm -f *.aux *.log *.dvi *.toc *.out

cleanall: clean
	rm -f $(NAME)
