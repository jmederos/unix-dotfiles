#! /bin/bash

OUTPUT_FOLDER="$1"

# zip folder
zip -qr ${OUTPUT_FOLDER}.zip ${OUTPUT_FOLDER}
