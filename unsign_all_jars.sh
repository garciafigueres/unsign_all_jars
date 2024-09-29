#!/bin/bash

# Loop through all JAR files in the current directory
for jar in *.jar; do
    # Check if the file exists
    if [[ -f "$jar" ]]; then
        # Rename the original JAR file
        mv "$jar" "ORIGINAL_$jar"
        
        # Unsign the JAR file by extracting and re-creating it without the META-INF directory
        mkdir temp_dir
        cd temp_dir
        jar xf "../ORIGINAL_$jar"
        rm -rf META-INF
        jar cf "../$jar" *
        cd ..
        rm -rf temp_dir
        
        echo "Processed $jar"
    fi
done

echo "All JAR files have been unsigned and renamed."
