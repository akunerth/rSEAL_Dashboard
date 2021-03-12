#!/usr/bin/env Rscript

#chmod ug+x /projects/snaplab/akunerth/rSEALData/*
  
module load R

if(!require(rmarkdown)) remote::install_github("rstudio/rmarkdown",
                                             repos = "http://cran.us.r-project.org",lib= "/gpfs/home/akunerth/R/x86_64-pc-linux-gnu-library/3.6")

library(boxr)
#Authenticates to box with credentials
box_auth_service()
#Set working directory to rSEAL_Dashboard folder
box_setwd(132210917081)
box_dl(786237121897, overwrite = TRUE)
test <- rmarkdown::render((box_dl(779377546442, overwrite = TRUE)))
 box_ul(
   dir_id = 132950532816,
   "/gpfs/projects/snaplab/akunerth/rSEALDashboard/enrollment.html",
   pb = options()$boxr.progress,
   description = NULL
 )                 

