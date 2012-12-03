all: rr-chapter.pdf

rr-chapter.pdf: rr-chapter.tex rr-refs.bib
	pdflatex rr-chapter.tex
	bibtex rr-chapter
	pdflatex rr-chapter.tex
	pdflatex rr-chapter.tex


clean:
	rm -f rr-chapter.{pdf,aux,log,bbl,lof,lot,blg} krantz.log *.toc
