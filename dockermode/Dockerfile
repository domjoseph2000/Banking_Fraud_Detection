# Start from a specific R version 
#FROM rocker/verse:latest 
FROM rocker/r-base:4.5.0

# Install system dependencies (if needed)
RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libcurl4-openssl-dev \
	p7zip-full \
	pandoc


# Set working directory
WORKDIR /home/project

# Create the output directory
RUN mkdir -p output

# Copy only essential files (optimize build caching)
# A dot (.) in Dockerfile COPY or ADD refers to the current working directory inside the container
COPY renv.lock .
COPY Fraud-Detection.Rmd .
COPY packages.R .
COPY data/bs140513_032310.7z .

RUN 7z x bs140513_032310.7z -odata && rm bs140513_032310.7z

# Install renv and restore packages
#RUN R -e "install.packages(c('rmarkdown', 'knitr', 'caret', 'corrplot', 'dplyr', 'naivebayes', 'pROC', 'rsample', 'tidyr'), repos='https://cloud.r-project.org/')"


RUN R -e "install.packages('renv')"
RUN R -e "options(repos = c(CRAN = 'https://cloud.r-project.org')); renv::restore(clean = TRUE)"

# Default command: Render Rmd
CMD ["Rscript", "-e", "rmarkdown::render('Fraud-Detection.Rmd', output_dir='output')"]