FROM texlive/texlive:latest

# Install any additional required packages
RUN tlmgr update --self && \
  tlmgr install fontawesome unicode-math enumitem ragged2e xifthen ifmtarg

# Set the working directory
WORKDIR /resume

# Copy all necessary files
COPY resume.tex /resume/
COPY awesome-cv.cls /resume/
COPY fontawesome.sty /resume/
COPY fonts/ /resume/fonts/

# Compile the resume
RUN xelatex resume.tex

# Create an output directory
RUN mkdir -p /output

# Copy the generated PDF to the output directory
RUN cp resume.pdf /output/

# Set the default command to provide the path to the PDF
CMD ["echo", "Resume has been compiled. The PDF is available at '/output/resume.pdf'"] 