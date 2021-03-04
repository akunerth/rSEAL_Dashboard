#Install the Qualtrics Package on first run
install.packages('devtools',dependencies=TRUE)
devtools:::install_github(repo='qualtrics',username='jbryer')
install.packages("remotes")
remotes::install_github("ropensci/qualtRics")

#Load Packages
require(qualtrics)
library(qualtRics)
library(devtools)

#Register and store credentials
#These can be found using Qualtrics API Documentation
qualtrics_api_credentials(api_key = "oF7OzqxCArxwUHOWclfUYlPU7qrSH8VkjLY2PL7i", 
                          base_url = "oregon.ca1.qualtrics.com",
                          install = TRUE) #overwrite = TRUE) #add overwrite = TRUE to change or edit

#Run new environemnt with updated credentials
readRenviron("~/.Renviron")

#Download list of surveys
surveys <- all_surveys() 
surveys

#Download a specific survey from Qualtrics and loads it into R
#Download rSEAL Survey 1
rSEAL_Survey1 <- fetch_survey(surveyID = surveys$id[84], 
                              save_dir = '~/Box/SEAL-r/rSEAL_Data/', 
                              force_request = TRUE,
                              verbose = TRUE)
rSEAL_Survey1Read <- read_survey('~/Box/SEAL-r/rSEAL_Data/Survey1Test/SV_9LHqcrf7Xu5fmtL.rds')
rSEAL_Survey1Read