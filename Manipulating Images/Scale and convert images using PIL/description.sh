### Download the File
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=$11hg55-dKdHN63yJP20dMLAgPJ5oiTOHF" > /dev/null | curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=11hg55-dKdHN63yJP20dMLAgPJ5oiTOHF" -o images.zip && sudo rm -rf cookie

## unzip

unzip images.zip

## List images

ls ~/images

The images received are in the wrong format:

.tiff format
Image resolution 192x192 pixel (too large)
Rotated 90° anti-clockwise
The images required for the launch should be in this format:

.jpeg format

Image resolution 128x128 pixel

Should be straight

## Install Pillow

We should change the format and size of these pictures, and rotate them by 90° clockwise. To do this, we'll use Python Imaging Library (PIL). Install pillow library using the following command:

pip3 install pillow

Python Imaging Library (known as Pillow in newer versions) is a library in Python that adds support for opening, manipulating, and saving lots of different image file formats.

Pillow offers several standard procedures for image manipulation. These include:

Per-pixel manipulations
Masking and transparency handling
Image filtering, such as blurring, contouring, smoothing, or edge finding
Image enhancing, like sharpening and adjusting brightness, contrast or color
Adding text to images (and much more!)


## Python Code

for image in os.listdir(old_path):
    if image == ".DS_Store":
        continue                    
    img = Image.open(old_path + image)

