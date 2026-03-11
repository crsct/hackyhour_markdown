TEX = pandoc
src = template.tex details.yml
# FLAGS = --pdf-engine=xelatex

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o Lebenslauf.pdf --template=$< $(FLAGS)

output.tex : $(src)
	$(TEX) $(filter-out $<, $^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm Lebenslauf.pdf
