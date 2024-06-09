#!/bin/bash
SCRIPT_DIR=${0%/*}
OUTPUT_DIR=$SCRIPT_DIR/ESP_Backend/data
echo $SCRIPT_DIR
cd $SCRIPT_DIR/ESP_Angular_Frontend
ng build
retVal=$?
if [ $retVal -ne 0 ]; then
        echo "Error in ng build"
        exit $retVal
fi
# remove data directory
rm -rf $OUTPUT_DIR
cd ..
cp -r $SCRIPT_DIR/ESP_Angular_Frontend/dist/my-app/browser $OUTPUT_DIR



