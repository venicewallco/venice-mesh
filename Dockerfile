# Dockerfile for Mesh Node Simulator

FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make ports available for the mesh node simulator
EXPOSE 8080

# Define environment variable
ENV NAME World

# Run mesh node simulator when the container launches
CMD ["python", "mesh_node_simulator.py"]
