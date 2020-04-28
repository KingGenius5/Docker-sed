# ------------------------------- DO NOT MODIFY ------------------------------ #
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

# Install pip
RUN apk add py-pip

# Install tldr
RUN pip install tldr

# Copying source code in current directory to container & storing in folder
ADD . /app

# Setting working directory to app
WORKDIR /app

# Description of sed command
RUN echo "According to TLDR Pages, sed allows one to edit text in a scriptable manner."

# Sample 1
CMD sed 's/Piper/Parker/' words.txt
