#!/usr/bin/env bash

JETBRAINS_FOLDER="/Users/$USER/Library/Application Support/JetBrains"
PHPSTORM_FOLDER=$(ls "$JETBRAINS_FOLDER" | grep PhpStorm | sort | tail -n1)

XML_FILES=$(ls "live-templates" | grep ".xml")

while IFS= read -r XML_FILE
do
  sed "s+_HOME_PATH_+/Users/$USER+g" "live-templates/$XML_FILE" > "$JETBRAINS_FOLDER/$PHPSTORM_FOLDER/templates/$XML_FILE"
done <<< "$XML_FILES"
