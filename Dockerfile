# Use the official Golang image as a base image
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

# Copy the Go application files
COPY main.go .

# Copy the static files from the "frontend" folder
COPY frontend ./frontend

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["go", "run", "main.go"]
