FILES = meta.yml 1-intro.md 2-cpus.md 3-fpga-asics.md 4-gpgpu.md

rapport.pdf: rapport.tex
	xelatex rapport
	bibtex rapport
	xelatex rapport
	xelatex rapport

rapport.tex: $(FILES) sources.bib
	pandoc --latex-engine=xelatex --bibliography=sources.bib -s -S --natbib -N -o $@ $(FILES)

.PHONY: clean
clean:
	$(RM) rapport.*
