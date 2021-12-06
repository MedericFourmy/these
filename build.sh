#!/bin/bash

nojustin=false

# Parse input arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -n|--nojustin) nojustin=true;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

pdflatex these

# Do not update biblio to save time
if [ "$nojustin" = false ]
then
    biber these
    pdflatex these
fi
