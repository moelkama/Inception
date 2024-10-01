# WordPress Website with Nginx and MariaDB

This project sets up a WordPress website using Nginx as the web server, with SSL/TLS for secure connections and MariaDB for database storage. All components run in separate Docker containers, managed by Docker Compose.

<img width="562" alt="Screen Shot 2021-12-22 at 8 38 03 PM" src="https://user-images.githubusercontent.com/54292953/147146268-a616f39a-3f16-41f8-80c9-db5494c3dfe7.png">

## Technologies Used

- **Docker**: For containerization.
- **Docker Compose**: To manage multi-container applications.
- **Nginx**: Web server with SSL/TLS support.
- **WordPress**: Content management system (CMS).
- **MariaDB**: Relational database for storage.

## Features

- Secure connection using SSL/TLS.
- Efficient storage management with MariaDB.
- Seamless integration of Nginx and WordPress through Docker volumes.

## Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed on your machine.
- [Docker Compose](https://docs.docker.com/compose/install/) installed.

### Installation

1. Clone the repository:

   ```bash
   git clone git@github.com:moelkama/Inception.git
   cd Inception
   make

### Accessing the Website
   Once the containers are running,
   you can access the website at: https://localhost

### Ressources
- [Docker Documentation](https://docs.docker.com/get-started/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Nginx Documentation](https://nginx.org/en/docs/)
- [WordPress Documentation](https://wordpress.org/documentation/)
- [MariaDB Documentation](https://mariadb.com/kb/en/documentation/)
