FROM alpine:3.20.1

# Install bash, git and cloc
RUN apk add --no-cache bash git cloc

# Create project directory
WORKDIR /app

# Add source code files to WORKDIR
ADD . .

# Entrypoint command
ENTRYPOINT ["bash", "script.bash"]