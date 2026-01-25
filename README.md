# End to end CI/CD

This is project was built to gain experience in CI/CD, DevOps-role, QA-role and gain knowledge computer networks fields.

## Technology stack:
- **Infrastructure:** Terraform (AWS EC2, VPC, Security Groups)
  <img width="1540" height="172" alt="image" src="https://github.com/user-attachments/assets/0b47dc17-0147-4145-9827-23ae2098ed15" />
- **Containerization:** Docker, Docker Compose
  <img width="1536" height="130" alt="image" src="https://github.com/user-attachments/assets/6301a303-6b58-4dfa-a017-062735a897d8" />
- **CI/CD:** GitHub Actions
- **Backend:** Python (Flask), PostgreSQL (Not used in the application. Added for skills in working with multiple containers. Docker Compose.)
- **Scripting:** Bash (Health Checks & Automation)

## Project Architecture
1. **Provisioning:** Terraform automatically creates infrastructure in the AWS cloud.
2. **CI Pipeline:** When attempting to commit, Python syntax is checked. The commit is only pushed after successful syntax validation. With each push to main, GitHub Actions collects the Docker image and sends it to Docker Hub.
3. **CD Pipeline:** Automatic connection to the server via SSH, image updates, and container restarts.
4. **QA:** After deployment, an automatic availability testing script is launched. (Smoke Test)

## Repository structure
- /terraform - infrastructure configuration files.
- /.github/workflows - automation pipeline description.
- /app - Python source code of the application.
- /tests - scripts for automatic performance testing.
- Dockerfile & docker-compose.yml - containerization configuration.

## Launch
1. **AWS Setup:** Create a t3.micro instance.
2. **Security:** Ensure port 5000 is open in Security Groups.
   <img width="1432" height="28" alt="image" src="https://github.com/user-attachments/assets/0cb7f856-ab52-4db7-a2ba-644028cbbff2" />
3. **CI/CD:** Add the necessary secrets (DOCKER_PASSWORD, DDOCKER_USERNAME, EC2_SSH_KEY, HOST_DNS, USERNAME) to the repository settings (Secrets and variables -> Actions).
4. **Deploy:** Run ***"git push origin main"***.


## Conclusion
The work was done with the aim of exploring the idea of the algorithm's operation on real projects, understanding its essentials, and building a vision of a pipeline that is as close to reality as possible.


