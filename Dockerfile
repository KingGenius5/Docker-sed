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

# Sample 2
'''
RUN echo "Delete lines matching the line pattern."
CMD sed '/Peter Piper picked a/d' words.txt
'''

# Sample 3
'''
RUN echo "Print only the n-th line of a file."
CMD sed '2q;d' words.txt
'''