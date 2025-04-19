# Install renv if missing
if (!requireNamespace("renv", quietly = TRUE)) install.packages("renv")

# Initialize renv
renv::init()

# Record package versions to renv.lock
renv::snapshot()

# Activate isolation
# renv::isolate()

# Install packages as per renv.lock on a new machine
renv::restore()	

# Check for outdated/missing packages.
renv::status()	
