#!/bin/bash

# Input PNG file
input_file="input.png"

# Output directory
output_dir="favicons"

# Create output directory if it doesn't exist
mkdir -p $output_dir

# Generate favicons in different sizes
convert $input_file -resize 16x16 $output_dir/favicon-16x16.png
convert $input_file -resize 32x32 $output_dir/favicon-32x32.png
convert $input_file -resize 48x48 $output_dir/favicon-48x48.png
convert $input_file -resize 64x64 $output_dir/favicon-64x64.png
convert $input_file -resize 128x128 $output_dir/favicon-128x128.png
convert $input_file -resize 152x152 $output_dir/favicon-152x152.png
convert $input_file -resize 192x192 $output_dir/favicon-192x192.png
convert $input_file -resize 256x256 $output_dir/favicon-256x256.png
convert $input_file -resize 512x512 $output_dir/favicon-512x512.png
#!/bin/bash

# Input PNG file
input_file="input.png"

# Output ICO file
output_file="favicon.ico"

# Ensure PNG background maintains transparency
convert $input_file -background none -flatten temp.png

# Convert PNG to ICO without stretching and filling with transparency
convert temp.png -bordercolor white -border 0 -gravity center -background transparent -resize 256x256 -extent 256x256 -define icon:auto-resize=64,48,32,16 $output_dir/favicon.ico

# Clean up temporary file
rm temp.png

echo "Favicons generated successfully in $output_dir"
