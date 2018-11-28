words <- readLines("words.txt")
vowels <- stringr::str_subset(words,"^[aeiou|AEIOU]")
vowel_length <- nchar(vowels)
vowel_dat <- table(vowel_length)
write.table(vowel_dat, "vowels.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)
