# **Fraud Detection on Bank Payments**

This synthetically generated dataset consists of payments from various customers made in different time periods and with different amounts. For more information on the dataset you can check the Kaggle page for this dataset:

[https://www.kaggle.com/code/turkayavci/fraud-detection-on-bank-payments/notebook]

The goal of this exercise is to fit different machine learning models on the data to see which one performs better. The modelling procedure follows the following main steps.

* Data import and initialdata analysis.

* Univariate analysis.

* Bivariate analysis.

* Feature Engineering.

* Model fitting

* Model evaluation

In the modelling stage, the model is trained using classification algorithm using Binary logistic regression and Naive Bayes classifier and then used to predict the likelihood that a transaction from the testing sample is fraud or not.
The steps to run the file are discussed below.

## Steps to Run the File

### Run RMD file


1. Extract the zip file data/bs140513_032310.7z, which is the data for the R file.

2. Run `Fraud Detection.RMD` file, which also installs all the required packages for you before performing further analysis of the project.

3. Alternately, you can open and run `renv-setup.R` first before running `Fraud Detection.RMD`, if you wish to run and manage the project as an renv project.


### DOCKER	        	

This method lets you run the code in a docker container. You may need to install docker on your computer (if not done already).

1. Navigate to the project folder location
cd 'A:/path/to/your/Fraud Detection'

2. Build docker image
docker build -t <image-name> -f .\dockermode\Dockerfile . 

3. Run docker container
docker run -v "$(Get-location)\output:/home/project/output" <image-name>

4. Run a container and enter the docker in an interactive shell
docker run --rm -it <image-name> bash
