test_that("Test stats fetching", {
   # This will be the directory that contains all the file path
   bam_dir <- file.path(example_data_folder(), "bam")
  
   # These MUST be names that are listed in the bam file name itself.
   # There needs to be exactly 2 bam files per sample
   sample_names <- c("sample1", "sample2", "sample3")
  
   stats_df <- get_stats(
     bam_dir = bam_dir,
     sample_names = sample_names,
     output_dir = "output_dir"
   )
})
