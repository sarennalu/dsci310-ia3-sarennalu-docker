FROM rocker/rstudio:4.4.2
 
RUN R -e "install.packages('cowsay')" # Runs command in new R session, then closes R session when done

