#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# This script remotely knits RMarkdown files.
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

library(ezknitr)

#sets suffix for file name
#generally best if this is 'system date/time'
suffix = format(Sys.time(), '%Y%m%d_%H%M%S')

#section calls script to run, provides filename suffix, and location
#for terminal usage
ezknit(file = "yolo.rmd", 
       out_suffix = suffix,
       out_dir = "../output",
       fig_dir = "../myfigs")

#for internal script usage
#needs to be different than terminal version
# ezknit(file = "r/yolo.rmd", 
#        out_suffix = suffix,
#        out_dir = "output",
#        fig_dir = "myfigs")


print("R script successfully ran from terminal.")

#hi
