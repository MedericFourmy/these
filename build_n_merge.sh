#!/bin/bash
sh build.sh
pdflatex first_page.tex
sh merge_first_and_these.sh