midgard: midgard.dtx midgard.ins
	pdflatex midgard.ins	
	pdflatex midgard.dtx
	makeindex -s gglo.ist -o midgard.gls midgard.glo	
	makeindex -s gind.ist -o midgard.ind midgard.idx
	pdflatex midgard.dtx
