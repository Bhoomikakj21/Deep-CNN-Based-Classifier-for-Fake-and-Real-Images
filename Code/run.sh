#!/bin/bash

echo "Step 1: Installing required packages..."
pip install -r ../requirements.txt
pip install jupyter nbconvert

echo "Step 2: Executing Jupyter Notebook: code.ipynb"
KERNEL=$(jupyter kernelspec list | grep -m1 python | awk '{print $1}')
jupyter nbconvert --to notebook --execute ./code.ipynb --output executed_code.ipynb --ExecutePreprocessor.kernel_name=$KERNEL

echo "Step 3: Verifying model files..."

MODEL_DIR="Models"

if [ ! -f "$MODEL_DIR/best_xception_model.pth" ]; then
    echo "Error: best_xception_model.pth not found in $MODEL_DIR"
    exit 1
fi

if [ ! -f "$MODEL_DIR/best_resnet50_model.pth" ]; then
    echo "Error: best_resnet50_model.pth not found in $MODEL_DIR"
    exit 1
fi

if [ ! -f "$MODEL_DIR/best_efficientnet_b0_model.pth" ]; then
    echo "Error: best_efficientnet_b0_model.pth not found in $MODEL_DIR"
    exit 1
fi

echo "All model files found successfully."

echo "Run completed. You can now open 'executed_code.ipynb' to view results."
