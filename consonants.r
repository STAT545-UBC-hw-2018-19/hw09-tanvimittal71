words <- readLines("words.txt")
consonants <- stringr::str_subset(words,"^[^aeiou|^AEIOU]")
consonants_length <- nchar(consonants)
consonants_dat <- table(consonants_length)
write.table(consonants_dat, "consonants.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)
