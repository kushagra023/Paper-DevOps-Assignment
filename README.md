# Contenarize The Website Using Docker

A simple web project containerized using Docker. This project includes HTML, CSS, and JavaScript files along with a Dockerfile for easy deployment.

## Features

- Responsive HTML, CSS, and JavaScript
- Dockerfile for containerization
- Easy setup and deployment

## Prerequisites

Ensure you have the following installed:

- [Docker](https://www.docker.com/)
- [Git](https://git-scm.com/)

## Installation

### Clone the Repository

```sh
git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
cd YOUR_REPOSITORY
```

## Build and Run with Docker
1. Build the Docker image  
```sh
docker build -t my-web-app .

```
2. Run the container: 
```sh
docker run -d -p 8080:80 my-web-app
```

3. Open your browser and go to:
```sh
http://localhost:8080
```

## Project Structure: 
```sh
    YOUR_REPOSITORY/
├── Dockerfile
├── webiste
    ├── styles.css
    ├── script.js
    └── index.html 
├──README.md

```
