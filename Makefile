all: problemorientierter_unterricht.pdf

problemorientierter_unterricht.pdf: problemorientierter_unterricht.tex literatur.bib
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" $<

clean:
	latexmk -CA
