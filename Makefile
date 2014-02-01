midgard: midgard.dtx midgard.ins
	pdflatex midgard.ins	
<<<<<<< HEAD
	pdflatex -halt-on-error midgard.dtx
	makeindex -s gglo.ist -o midgard.gls midgard.glo	
	makeindex -s gind.ist -o midgard.ind midgard.idx
	pdflatex -halt-on-error midgard.dtx
=======
	pdflatex midgard.dtx
	makeindex -s gglo.ist -o midgard.gls midgard.glo	
	makeindex -s gind.ist -o midgard.ind midgard.idx
>>>>>>> 57cbe0f174f7e96fe81bd9c5908394b4a63e8730
