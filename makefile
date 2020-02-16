main: amazeing_de.pdf amazeing_en.pdf jousting_de.pdf jousting_en.pdf linefollowing_de.pdf linefollowing_en.pdf

amazeing_de.pdf: amazeing_de.tex
	xelatex amazeing_de.tex

amazeing_en.pdf: amazeing_en.tex
	xelatex amazeing_en.tex

jousting_de.pdf: jousting_de.tex
	xelatex jousting_de.tex

jousting_en.pdf: jousting_en.tex
	xelatex jousting_en.tex

linefollowing_de.pdf: linefollowing_de.tex
	xelatex linefollowing_de.tex

linefollowing_en.pdf: linefollowing_en.tex
	xelatex linefollowing_en.tex

firefighting_de.pdf: firefighting_de.tex
	xelatex firefighting_de.tex


sumobot_de.pdf: sumobot_de.tex
	xelatex sumobot_de.tex



clean:
	rm *.pdf
	rm *.log
	rm *.aux
	rm *.synctex.gz
