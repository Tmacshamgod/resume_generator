default: jeff-cn.pdf jeff-en.pdf resume.pdf

resume.pdf: jeff-en.pdf
	cp $^ resume.pdf

jeff-cn.pdf: jeff-cn.tex
	xelatex $^

jeff-en.pdf: jeff-en.tex
	xelatex $^

clean:
	rm -rf *.log *.out *.aux
