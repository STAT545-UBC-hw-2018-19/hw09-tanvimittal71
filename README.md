## HW09-Tanvi Mittal

This repository is my submission for hw09 for STAT547M.

In this repo, I build upon existing pipeline provided as a starting point. The original version for this assignment can be found [here](https://github.com/STAT545-UBC/make-activity)

The data used in this automation is ["words.txt"](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/words.txt) which contains a list of English words. The intial files output a report which uses files: *histogram.tsv* and *histogram.png* to provide analysis of word length.

I have added below mentioned files:

* [vowels.r](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/vowels.r): It outputs *[vowels.tsv](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/vowels.tsv)* which gives frequency of length of words starting with a vowel
* [vowel.png](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/vowel.png): plots *vowels.tsv* 
* [consonants.r](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/consonants.r): It outputs *[consonants.tsv](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/consonants.tsv)* which gives frequency of length of words starting with a consonant
* [consonants.png](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/consonants.png): plots *consonants.tsv* 

Using all the files mentioned above, I have updated [report.rmd](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/report.rmd) to provide the analysis including the plots and data obtained from the newly added files. **[HTML](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/report.html)** and **[Md](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/report.md)** files for this report also included.

Also, **[Makefile](https://github.com/STAT545-UBC-students/hw09-tanvimittal71/blob/master/Makefile)** has been updated with dependencies and output.
