FILES = meta.yml 1-intro.md 2-cpus.md 3-fpga-asics.md 4-gpgpu.md

rapport.pdf: $(FILES)
	pandoc --latex-engine=xelatex -N -o $@ $^
