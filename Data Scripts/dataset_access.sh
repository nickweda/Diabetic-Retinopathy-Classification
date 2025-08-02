# Nick Weda
# Dependencies:
# Python, venv package, 
# Kaggle API Key downloaded from Kaggle Website and placed into your home directory

# Setup the Python Virtual Environment.
cd
python3 -m venv kagglevenv
source kagglevenv/bin/activate

# Setup the Python Kaggle Library
pip install kaggle
mkdir -p ~/.kaggle

# Move and secure the key
mv ~/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json

# Download dataset
kaggle competitions download -c diabetic-retinopathy-detection -p ~/DR

# Change directory to the download location
cd DR

# Unzip and cleanup the main zip file
unzip diabetic-retinopathy-detection.zip
rm diabetic-retinopathy-detection.zip

# Combine multi-part train and test files and cleanup
cat train.zip.* > train_combined.zip
rm train.zip.*

cat test.zip.* > test_combined.zip
rm test.zip.*

# Unzip train and test files and cleanup
unzip train_combined.zip
rm train_combined.zip

unzip test_combined.zip
rm test_combined.zip

# Unzip and cleanup the labels for the training data
unzip trainLabels.csv.zip
rm trainLabels.csv.zip

# Unzip Sample data and Sample Submission then cleanup, move into a new sample dir
unzip sample.zip
rm sample.zip

unzip sampleSubmission.csv.zip
rm sampleSubmission.csv.zip

mkdir samples
mv sample samples/
mv sampleSubmission.csv samples/