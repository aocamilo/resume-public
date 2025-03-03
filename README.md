# Resume Builder with Docker

This project contains a LaTeX resume that can be compiled to PDF using Docker without installing any LaTeX tools locally.

## Requirements

- Docker installed on your system

## How to Compile the Resume

1. Make sure Docker is running on your system
2. Run the build script:

   ```bash
   ./build-resume.sh
   ```

3. The compiled PDF will be available as `resume.pdf` in the project root

## Project Structure

- `resume.tex`: The main LaTeX file containing your resume content
- `awesome-cv.cls`: The LaTeX class file for the resume template
- `fonts/`: Directory containing required fonts
- `fontawesome.sty`: Font Awesome style file for icons
- `Dockerfile`: Docker configuration for compiling the resume
- `build-resume.sh`: Script for building and running the Docker container

## Customizing Your Resume

To update your resume:

1. Edit the `resume.tex` file with your information
2. Run the build script again to generate a new PDF

## Manual Docker Commands

If you prefer to run the Docker commands manually:

```bash
# Build the Docker image
docker build -t resume-builder .

# Run the container
docker run --name resume-container resume-builder

# Copy the PDF to your local machine
docker cp resume-container:/output/resume.pdf ./resume.pdf

# Remove the container
docker rm resume-container
```
