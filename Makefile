.PHONY: all clean

all: functional-spec.pdf

functional-spec.pdf: functional-spec.tex
	pdflatex -interaction=nonstopmode -halt-on-error functional-spec.tex && \
	pdflatex -interaction=nonstopmode -halt-on-error functional-spec.tex

clean:
	rm -f functional-spec.pdf *.aux *.log *.toc *.out *.pdf
