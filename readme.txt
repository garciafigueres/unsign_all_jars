Copy the script to the same directory where the signed jars are.
Run it


In case you need to give execution permissions:
chmod +x unsign_all_jars.sh

To verify if a jar is signed or unsigned:
    jarsigner -verify nameoffile.jar

If the jar is signed will display: 'jar verified.'
Otherwise it will display: 'jar is unsigned.'