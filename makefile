main: amazeing_de.pdf amazeing_en.pdf jousting_de.tex jousting_en.tex firefighting_de.tex linefollowing_de.tex sumobot_de.tex

amazeing_de.pdf: amazeing_de.tex
	xelatex amazeing_de.tex

amazeing_en.pdf: amazeing_en.tex
	xelatex amazeing_en.tex

jousting_de.pdf: jousting_de.tex
	xelatex jousting_de.tex


jousting_en.pdf: jousting_de.tex
	xelatex jousting_de.tex

firefighting_de.pdf: firefighting_de.tex
	xelatex firefighting_de.tex


sumobot_de.pdf: sumobot_de.tex
	xelatex sumobot_de.tex


jousting_de.pdf: jousting_de.tex
	xelatex jousting_de.tex


linefollowing_de.pdf: linefollowing_de.tex
	xelatex linefollowing_de.tex

clean:
	rm *.pdf
	rm *.log
	rm *.aux
	rm *.synctex.gz
