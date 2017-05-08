FILES = meta.yml 1-intro.md

rapport.pdf: $(FILES)
	pandoc --latex-engine=xelatex -o $@ $^
