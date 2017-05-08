FILES = meta.yml 1-intro.md 2-cpus.md 3-fpga-asics.md 4-gpgpu.md 5-bibliographie.md

rapport.pdf: $(FILES)
	pandoc --latex-engine=xelatex --filter pandoc-citeproc -N -o $@ $^
