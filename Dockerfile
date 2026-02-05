FROM rocker/rstudio:4.4.2

COPY renv.lock ./
COPY .Rprofile ./
COPY renv/activate.R ./renv/activate.R