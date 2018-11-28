all: report.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html vowels.tsv vowels.png consonants.tsv consonants.png

words.txt:
	Rscript -e 'download.file("https://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'

report.html: report.rmd histogram.tsv histogram.png vowels.tsv vowel.png consonants.tsv consonants.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt
	Rscript $<

vowel.png: vowels.tsv
	Rscript -e 'library(ggplot2); qplot(vowel_length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

vowels.tsv: vowels.r words.txt
	Rscript $<

consonants.png: consonants.tsv
	Rscript -e 'library(ggplot2); qplot(consonants_length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

consonants.tsv: consonants.r words.txt
	Rscript $<

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
