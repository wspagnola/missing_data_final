#### Create Missing Data Pattern Matrix
#```{r Missing Data Pattern Matrix}

#Generate Patterns of Rows with 2 missing variables
mixed_missing_patterns_1 <- c(1, 0, 0)
mixed_missing_patterns_2 <- c(0, 1, 0 )
mixed_missing_patterns_3 <- c(0, 0, 1 )


pattern_matrix <- rbind(ampute.default.patterns(3),
                        mixed_missing_patterns_1, mixed_missing_patterns_2,
                        mixed_missing_patterns_3)
row.names(pattern_matrix) <- NULL
pattern_matrix
#```

#WITH DIFFERENT MISSING DATA PATTERNS
#Use ampute function to generate missing data in bmi and health_cover columns
# a <- ampute(risk_sub[ missing_row_idx , MAR_idx], 
#             bycases = F, 
#             pattern = pattern_matrix,
#             prop = .2)
