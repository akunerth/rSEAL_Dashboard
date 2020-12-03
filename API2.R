#Automatic Download API for Surveys

#Install QualtRics Package
install.packages("remotes")
remotes::install_github("ropensci/qualtRics")
library(qualtRics)

#Register and store credentials
#These can be found using Qualtrics API Documentation
qualtrics_api_credentials(api_key = "oF7OzqxCArxwUHOWclfUYlPU7qrSH8VkjLY2PL7i", 
                            base_url = "oregon.ca1.qualtrics.com",
                            install = TRUE, overwrite = TRUE) #add overwrite = TRUE to change or edit
#Run new environemnt with updated credentials
readRenviron("~/.Renviron")

#Fetch a list of all surveys that you own or have access to from Qualtrics.
surveys <- all_surveys() 
surveys

#Retrieve metadata about your survey
metadata()

#Retrieve a data frame containing questions and question IDs for a survey
survey_questions()

#Read CSV files you download manually from Qualtrics
read_survey()

#Download a specific survey from Qualtrics and loads it into R
fetch_survey()



