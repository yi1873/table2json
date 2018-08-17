FROM r-base
MAINTAINER xiang_zhi_@126.com

ADD ./tab2json.R /R/tab2json.R

RUN R --vanilla -e 'install.packages("rjson", repos="http://cran.us.r-project.org")' \
    && R --vanilla -e 'install.packages("data.table", type = "source",repos = "http://Rdatatable.github.io/data.table")'
