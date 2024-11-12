# Run after dataset_access.sh to upload the local files into google drive

# Dependencies:
# Install Rclone from https://rclone.org/install/
# Google Drive Standard (payed). Have 95 GB of free space in Google Drive. 

# rclone config
# n
# gdrive
# 19

# Create a client id https://rclone.org/drive/#making-your-own-client-id
# Create a new google cloud project
# ENABLE APIS AND SERVICES
# Search for drive
# Google Drive API
# Press Enable
# Click credentials in the left side panel
# Configure Consent Screen
# Select External, then create
# In application name put "rclone", user support email put the current account email, same for developer contact information
# Save and continue
# Manually add scopes on doc page. Add to table, update. Save and continue
# Add own email to test users, save and continue
# Go back to the credentials tab, create credentials, oauth client id, desktop app, default name is fine

# Save client ID and client secret.

# Oauth consent screen, click publish app.

# Now we can use the clientID and clientSecret back in the cli screen.

# Choose 1

# Guide for rest : https://tcude.net/setting-up-rclone-with-google-drive/ 

# Once finished quit the config.

# Test the connection with rclone ls gdrive:

# Test moving a file
# rclone copy ~/nyancat.jpg gdrive:/coolPics
# It works!

# rclone copy /home/nick/DR gdrive:/drDataset -P

# 10gb cap? 1mb upload speeds...

# Rclone is too slow.

# Use the GoogleDrive Desktop app on Mac to upload

# Manually transfer dataset to a portable ssd, then use my macbook to upload to drive.