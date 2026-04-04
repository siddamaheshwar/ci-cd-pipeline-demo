
 CI/CD Pipeline Demo – Java Web Application
📌 Project Overview
This project demonstrates a complete CI/CD pipeline using DevOps tools.
The pipeline automates the process from code commit to deployment on a live server.

🎯 Objective
To build a fully automated pipeline where:

Code is pushed to GitHub

Jenkins builds the project using Maven

WAR file is deployed to Tomcat automatically

🏗️ Architecture / Workflow
Developer
   ↓
GitHub Repository
   ↓ (Webhook)
Jenkins
   ↓
Build using Maven
   ↓
WAR File Generated
   ↓
Deploy via SSH
   ↓
Apache Tomcat Server
   ↓
Application Live
👉 This matches your PDF pipeline flow 


🛠️ Tools & Technologies Used
Git

GitHub

Jenkins

Apache Maven

Apache Tomcat

AWS EC2 (Linux)

📂 Project Structure
ci-cd-pipeline-demo/
│── pom.xml
│── .gitignore
└── src/
    └── main/
        └── webapp/
            └── index.jsp
⚙️ Step-by-Step Implementation
🔹 1. Git & GitHub Setup
Created repository

Added Maven project

Pushed code using Git

🔹 2. Jenkins Setup
Installed Jenkins on EC2

Installed plugins:

Git Plugin

Maven Plugin

GitHub Integration

Publish over SSH

🔹 3. Webhook Integration
Configured GitHub webhook

Trigger: Push event

Connected to Jenkins

🔹 4. Build Process
Jenkins pulls code

Runs:

mvn clean package
Generates .war file

🔹 5. Deployment
SSH connection to Tomcat server

WAR file copied to:

/opt/tomcat/webapps/
Application deployed automatically

🌐 Output
After deployment:

http://<Tomcat-Public-IP>:8080/calculator
📸 Screenshots (Optional but HIGHLY recommended)
Add:

Jenkins pipeline success

Webhook success

Tomcat output

💡 Key Features
✔ Fully automated deployment
✔ Zero manual intervention
✔ Real-world DevOps workflow
✔ Scalable and reusable

📚 Learning Outcome
CI/CD pipeline implementation

Jenkins automation

Maven build process

Tomcat deployment

GitHub integration

🔗 GitHub Repository
https://github.com/siddamaheshwar/ci-cd-pipeline-demo.git

👨‍💻 Author
Mahesh
DevOps Engineer (Fresher)
