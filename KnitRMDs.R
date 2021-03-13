#!/usr/bin/env Rscript

if(!require(rmarkdown)) remote::install_github("rstudio/rmarkdown",
                                               repos = "http://cran.us.r-project.org",lib= "/gpfs/home/akunerth/R/x86_64-pc-linux-gnu-library/3.6")

library(boxr)
#Authenticates to box with credentials
box_auth_service()
#Set working directory to rSEAL_Dashboard folder
box_setwd(132210917081)
#Knits/Renders file
rmarkdown::render_site(encoding = 'UTF-8')

file.remove("caseProgressionlog.csv")
file.remove("Coach_Impressions_Form.sav")
file.remove("Coach_Impressions_Form copy 2.sav")
file.remove("consentTracker.csv")
file.remove("enrollment.html")
file.remove("enrollment.Rmd")
file.remove("FIND_Fidelity.sav")
file.remove("FIND_Fidelity copy 2.sav")
file.remove("HTP_Fidelity.sav")
