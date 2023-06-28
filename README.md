# UG-MIS
This project involves the design and development of a mobile system using [Flutter](https://flutter.dev). The goal of the project is to create a mobile software app that includes log-in, user registration, and a dashboard page for registered students to interact with.

# Features
The mobile system includes the following features:

- **Log-in**: The app provides a log-in page where registered students can enter their credentials to access the system.

- **User Registration**: New students can register for the system by providing their details, such as name, email, and password.

- **Dashboard**: Upon successful log-in, students are presented with a dashboard page that provides a centralized interface for various functionalities.

# Architecture
The system follows a typical client-server architecture, with the front-end built using [Flutter](https://flutter.dev) for the mobile app and a back-end server for handling log-in, registration, and data storage. The front-end and back-end components will be connected through API using [SpringBoot](https://spring.io).

## Front-end Architecture
The front-end of the mobile system is developed using [Flutter](https://flutter.dev), a cross-platform framework for building mobile apps. The [Flutter](https://flutter.dev) architecture follows a widget-based approach, where the UI components are built using a hierarchy of widgets.

The front-end architecture includes the following components:

 - **UI Screens**: The app consists of several screens, including the log-in screen, registration screen, and dashboard screen. Each screen is implemented as a [Flutter](https://flutter.dev) widget.

- **State Management**: [Flutter](https://flutter.dev) provides various options for state management, such as [Provider](https://pub.dev/packages/provider), [Riverpod](https://pub.dev/packages/flutter_riverpod), or [MobX](https://pub.dev/packages/mobx). For this project, [Getx State Management](https://pub.dev/packages/get) tool was used.

## Back-end Architecture
The back-end of the system will be responsible for handling log-in, user registration, and data storage. It will provide APIs that the mobile app communicates with to perform these tasks. Coming Soon 😅 

<!-- The back-end architecture includes the following components:

Authentication: Implement an authentication mechanism, such as JSON Web Tokens (JWT), to secure the log-in process and protect user data.

API Endpoints: Define API endpoints for log-in, user registration, and other necessary functionalities. These endpoints handle requests from the mobile app and interact with the database.

Database: Choose a suitable database system for storing student information. Popular options include MySQL, PostgreSQL, or Firebase Realtime Database. Design the database schema to store user credentials and any additional required information. -->

# Installation and Setup
To run the mobile system locally, follow these steps:

Clone the repository:

```bash
    git clone <repository-url>
```
Install [Flutter](https://flutter.dev) and set up the development environment. Refer to the official [Flutter](https://flutter.dev) documentation for detailed instructions: [Flutter](https://flutter.dev) Documentation

Build and run the mobile app on an emulator or physical device using the [Flutter](https://flutter.dev) CLI:
``` bash
    flutter run
```
# Conclusion
The mobile system project aims to provide a user-friendly interface for student log-in, registration, and accessing a dashboard. The use of [Flutter](https://flutter.dev) for front-end development, along with a back-end server and database connectivity, enables seamless communication between the mobile app and the server. By following the installation and setup instructions, you can run the mobile system locally and start exploring its features.

# Getting Started With [Flutter](https://flutter.dev)

This project is a starting point for a [Flutter](https://flutter.dev) application.

A few resources to get you started if this is your first [Flutter](https://flutter.dev) project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with [Flutter](https://flutter.dev) development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
