Deep-CNN-Based Classifier for Fake and Real Images

Project Summary:
This project implements a deep learning–based image classifier to detect whether an image is real or fake.
It uses three CNN models — Xception, EfficientNet-B0, and ResNet50 each fine-tuned on a labeled dataset.
An ensemble model combines their predictions to improve accuracy and reliability.

Folder Structure:
Deep-CNN-Based-Classifier-for-Fake-and-Real-Images/
├── requirements.txt
├── readme.txt
└── Code/
    ├── run.sh
    ├── code.ipynb
    ├── Models/
    │   ├── best_xception_model.pth
    │   ├── best_resnet50_model.pth
    │   └── best_efficientnet_b0_model.pth
    └── Dataset/
        └── dataset.csv
        └── dataset_rebuilt.csv
        ├── Fake
        └── Real

External Downloads:
- Dataset: https: https://drive.google.com/drive/folders/1ApOKLu-iE1X2XqdZHPue2mr-0LCtFaa2?usp=drive_link
    → Extract into: Code/Dataset/
- Trained Models: https://drive.google.com/drive/folders/10abY4CIZ3Exr2R-xNs1RiSePInyMh4g4?usp=drive_link
    → Place into: Code/Models/

How to Run:
1. Open a terminal and go to the 'Code/' directory:
   cd Code/

2. Make the run script executable (only once):
   chmod +x run.sh

3. Execute the project:
   ./run.sh

This script will:
- Install dependencies
- Run the training and evaluation notebook
- Validate model files

Requirements:
- Python 
- Packages listed in requirements.txt
