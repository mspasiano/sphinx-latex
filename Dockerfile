# DOCKER-VERSION 1.12
FROM python:3.7
MAINTAINER Marco Spasiano <marco.spasiano@cnr.it>

RUN apt-get update && \
	apt-get install --no-install-recommends -y texlive-base texlive-latex-base texlive-latex-recommended texlive-fonts-recommended \
	texlive-humanities texlive-lang-italian texinfo texlive-science latexmk texlive-latex-extra && \
	apt-get autoremove && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	pip install sphinx==2.4.4 recommonmark numpydoc nbsphinx sphinx_markdown_tables requests sphinxcontrib-images 
