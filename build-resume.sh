#!/bin/bash

# Build the Docker image
echo "Building Docker image..."
docker build -t resume-builder .

# Run the container and copy the PDF to the current directory
echo "Compiling resume..."
docker run --name resume-container resume-builder

# Copy the PDF from the container to the host
echo "Copying PDF to current directory..."
docker cp resume-container:/output/resume.pdf ./resume.pdf

# Clean up
echo "Cleaning up..."
docker rm resume-container

echo "Done! Your resume is available as resume.pdf in the current directory." 