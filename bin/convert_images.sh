#!/bin/bash
mkdir -p ./thumbs
mkdir -p ./full

# Convert all HEIC images in the current directory to JPEG format with specified options
# Create thumbnails with max dimension 400px
# Create resized images with max dimension 1600px
# Using sRGB color profile and 72 DPI
sips -s format jpeg -s formatOptions high -s dpiWidth 72 -s dpiHeight 72 -m '/System/Library/ColorSync/Profiles/sRGB Profile.icc' -Z 400 *.HEIC --out ./thumbs/
sips -s format jpeg -s formatOptions high -s dpiWidth 72 -s dpiHeight 72 -m '/System/Library/ColorSync/Profiles/sRGB Profile.icc' -Z 1600 *.HEIC --out ./resized/