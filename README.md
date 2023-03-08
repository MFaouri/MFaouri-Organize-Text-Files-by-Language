# Bash Script to Organize Text Files by Language

This bash script is designed to organize a set of text files by language. Specifically, it assumes that you have a set of 1000 txt files, each named according to the pattern {language}-{number}.txt, where {language} is the name of the language (e.g. "english", "arabic", etc.) and {number} is a unique identifier for each file.

The script creates a separate directory for each language and moves all of the corresponding text files into that directory. This makes it easy to work with the text files on a language-by-language basis, rather than having to sort through all of the files at once.

## Usage

To use this script, follow these steps:

    Save the script to a file, e.g. organize_files.sh.
    Open a terminal and navigate to the directory containing your txt files.
    Make the script executable by running chmod +x organize_files.sh.
    Run the script by typing ./organize_files.sh and pressing Enter.

## Code
```
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
```

## How it Works

The script works by looping through each language and performing the following steps:

    Check if a folder for the language already exists. If not, create it using the mkdir command.
    Use the mv command to move all txt files for that language into the language folder.

The mv command uses a wildcard expression ("${lang}-"*.txt) to select all files whose names start with the language prefix (e.g. arabic-1.txt, arabic-2.txt, etc.).

## Customization

If your txt files are named differently (i.e. not using the {language}-{number}.txt pattern), you will need to modify the script to match your file naming convention.

You can also customize the list of languages in the script by adding or removing entries from the for loop that iterates over the language names.
