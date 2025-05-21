FROM gcc:latest@sha256:16aea78a24ad0c562e63fe3060d3ce85f96101ecd1db09b67b1ccd9bff7dfe4d

#Prepare and setup the working directory
RUN mkdir -p /app
WORKDIR /app
COPY vsnippet .
RUN gcc -o vsnippet-program-c 23-bof-classic.c

CMD [ "./vsnippet-program-c" ]
