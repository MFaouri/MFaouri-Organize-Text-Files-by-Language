#!/bin/bash

# Loop through each language
for lang in arabic Bengali chinese english french hindi indonesian portuguese russian spanish; do
    # Create a folder for the language, if it doesn't already exist
    if [ ! -d "$lang" ]; then
        mkdir "$lang"
    fi
    
    # Move all the txt files for this language into the language folder
    mv "${lang}-"*.txt "$lang/"
done
