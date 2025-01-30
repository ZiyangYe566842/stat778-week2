#!/usr/bin/env Rscript
# Install argparse in a user-writable directory

library(argparse)

# Create a parser
parser <- ArgumentParser(description = "A script to demonstrate argument parsing in R")

# Add arguments
parser$add_argument(
  "--replications", 
  type = "integer", 
  required = TRUE, 
  help = "Number of replications (must be an integer greater than 0)"
)
parser$add_argument(
  "--output_dir", 
  type = "character", 
  default = getwd(), 
  help = "Output directory (defaults to the current working directory)"
)

# Parse arguments
args <- parser$parse_args()

# Validate the number of replications
if (args$replications <= 0) {
  stop("The number of replications must be an integer greater than 0.", call. = FALSE)
}

# Print the arguments to the console
cat("Number of replications:", args$replications, "\n")
cat("Output directory:", args$output_dir, "\n")