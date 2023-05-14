# Payroll-M3-API

A Spring Boot API to perform basic CRUD operation for a fake company called MotorPH.

## Prerequisites

- JDK 17 or higher
- Docker

## Getting Started

Follow the instructions below to get a local development instance up and running.

### Building the Application

To build the application, execute the following command:

```shell
mvn clean package
```

### Running the Application

To run the application locally, execute the following command:

```shell
java -jar /target/payroll-m3-api.jar
```

The application will be accessible at [http://localhost:8080](http://localhost:8080).

## Docker Support

You can also run the application using Docker.

### Building the Docker Image

To build the Docker image, execute the following command:

```shell
docker build -t wonderpets-payroll-m3-api .
```

### Running the Docker Container

To run the Docker container, execute the following command:

```shell
docker run -p 8080:8080 wonderpets-payroll-m3-api
```

The application will be accessible at [http://localhost:8080](http://localhost:8080).

## API Documentation

Once the application is up and running, you can access the API documentation
at [http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html).

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvement, please create an issue or submit
a pull request.

## License

This project is licensed under the LICENCE. See the [LICENSE](LICENCE.md) file for more information.

---

🚀🚀🚀
