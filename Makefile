# Makefile to build 'Introduction à la programmation' website
# Septembre 2015

clean:
	rm -rf _book
	rm -rf _bookdown_files
	rm -f intro_prg_sci.Rmd

dep:
	Rscript -e 'install.packages(c("servr","devtools"),repos="http://cran.us.r-project.org");devtools::install_github("rstudio/bookdown")'

html_server: *.Rmd
	Rscript -e "bookdown::serve_book(dir = './', output_dir = '_book', preview = TRUE,in_session = TRUE)"

pdf:
	echo "Pas encore configuré"
