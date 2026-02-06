FROM rocker/rstudio:4.4.2

WORKDIR /home/rstudio/project

COPY renv.lock ./
COPY .Rprofile ./
COPY renv/activate.R ./renv/activate.R

RUN R -e "install.packages('renv', repos='https://cloud.r-project.org')" \
 && R -e "renv::restore()"