# Student Project - Django Web Application

This project is a Django-based web application designed to show my profile publicly and is containerized using Docker with a CI/CD pipeline managed via Jenkins.

## 📌 Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Docker Integration](#docker-integration)
- [Jenkins CI/CD Pipeline](#jenkins-cicd-pipeline)

---

## 🚀 Project Overview

This Django web application is my homepage , also adding contact , project and about me page

### 🔧 Technologies Used:
- **Programming Language**: Python (Django Framework)
- **Containerization**: Docker
- **CI/CD Pipeline**: Jenkins
- **Version Control**: Git & GitHub

---

## 🛠 Installation

Follow these steps to set up the project locally:

### 1️⃣ Clone the Repository  
```sh
git clone https://github.com/SRCEM-AIML/C04_Atharva-Tembhurnikar_Assignment-2.git
cd C04_Atharva-Tembhurnikar_Assignment-2
```

### 2️⃣ Set Up a Virtual Environment (Recommended)
```sh
python -m venv venv
source venv/bin/activate  # On Windows use venv\Scripts\activate
```

### 3️⃣ Install Dependencies
```sh
pip install -r requirements.txt
```

### 4️⃣ Apply Database Migrations
```sh
python manage.py migrate
```

### 5️⃣ Run the Development Server
```sh
python manage.py runserver
```
📍 **Access the application at** [http://127.0.0.1:8000/](http://127.0.0.1:8000/).

---

## 🐳 Docker Integration

To run the project using **Docker**:

### 🔹 Build the Docker Image
```sh
docker build -t studentproject .
```

### 🔹 Run the Container
```sh
docker run -p 8000:8000 studentproject
```
📍 The application will be available at **[http://127.0.0.1:8000](http://127.0.0.1:8000)**.

---

## 🔄 Jenkins CI/CD Pipeline

This project is configured for **Continuous Integration and Deployment** using **Jenkins**.

### 🛠 Steps to Set Up Jenkins:

1. **Install Jenkins** and required plugins:
   - **Pipeline**
   - **Docker Pipeline**

2. **Create a Jenkins Pipeline** and connect it to this repository.

3. **Run the Pipeline** to **build, test, and deploy** the application.

 ![image](https://github.com/user-attachments/assets/5c1e3b77-2043-4e74-88cf-283a2e951062)


---

💡 **Contributions & Feedback**  
Feel free to contribute or report any issues!

📧 **Contact:** 
Email : tembhurnikaraa@rknec.edu

