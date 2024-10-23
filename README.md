

Spring Boot and React.js Application



This project is a full-stack application using Spring Boot  for the backend and React.js for the frontend. It includes features such as Spring Security for authentication and authorization, Swagger for API documentation, and automated tests using JUnit. The application is containerized with Docker for easy deployment, with MariaDB used as the database, and dependencies are managed using Maven.

Technologies Used:
- Backend: Spring Boot, Spring Security, Swagger
- Frontend: React.js
- Database: MariaDB
- Testing: JUnit
- Build Tool: Maven
- API Documentation: Swagger
- Containerization: Docker

## Prerequisites

- Java 11+
- Node.js and npm for React.js
- Maven installed
- Docker installed for containerization
- MariaDB installed (or use Docker for the database)
- IntelliJ IDEA for running the project

## Steps to Run the Application on Linux

### 1. Clone the Project


git clone https://github.com/SihamOubalaout/SpringDataRest.git
cd SpringDataRest.git


### 2. Backend Setup (Spring Boot)

1. Open the project in IntelliJ IDEA.
2. Configure environment variables for connecting to MariaDB. Ensure the database connection settings (URL, username, password) are correctly set in `application.properties'
3. **Run the backend**:
   - In IntelliJ IDEA, select the main class 'SprinDataRestApplication.java'.
   - Run the application from IntelliJ (or use `mvn spring-boot:run` from the terminal).
4. Swagger will be available at:
   - `http://localhost:8080/swagger-ui.html`

### 3. Setup MariaDB

If you are using MariaDB locally via Docker, you can run the following command to start MariaDB:
docker run --name mariadb -e MYSQL_ROOT_PASSWORD=your_password -e MYSQL_DATABASE=your_database -p 3306:3306 -d mariadb:latest

### 4. Run Tests

To run unit tests defined with JUnit, use the following command:


mvn test


### 5. Frontend Setup (React.js)

1. Navigate to the `reactjs` directory:
   
   cd reactjs
   
2. Install dependencies:
   
   npm install
   
3. Start the frontend application:
   
   npm start
   
   The frontend will be available at `http://localhost:3000`.
 


### 6. Containerization with Docker

#### 6.1. Build Docker Images

From the project root directory, build the Docker images for the backend, frontend, and MariaDB using:


docker-compose up --build


#### 6.2. Run the Containers

Once the images are built, run the containers using Docker Compose:


docker-compose up


This will start the backend, frontend, and MariaDB services in Docker containers. The backend will be available on port 8080, the frontend on port 3000, and MariaDB on port 3306.

### 7. Monitoring the Application

The application uses Actuator ,Prometheus and Grafana for monitoring.
Monitoring the Application with Actuator
The application uses Spring Boot Actuator for monitoring. Some useful Actuator endpoints include:
 

Health Check: http://localhost:8080/actuator/health
Metrics: http://localhost:8080/actuator/metrics
Prometheus Metrics : http://localhost:8080/actuator/prometheus
8. Monitoring the Application with Prometheus and Grafana
The application uses Prometheus and Grafana for monitoring.

Access Grafana at http://localhost:3000 to view metrics dashboards.
 

Prometheus is configured to scrape metrics from the Spring Boot application at the http://localhost:9090 endpoint.
 

9. Security
The application uses Spring Security for securing the backend. You can customize the security settings in the `SecurityConfig.java` file.
