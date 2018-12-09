.PHONY: clean all

all : report.pdf report.png chart.pdf

clean:
	rm  -f *.pdf *.png

report.pdf: report.html chart.svg
	weasyprint report.html report.pdf

report.png: report.html chart.svg
	weasyprint report.html report.png

chart.pdf: chart.svg
	cairosvg chart.svg -o chart.pdf
