# Java J2EE Web Application

Welcome to the **Java J2EE Web Application**! This is a simple web-based application built using Java J2EE technologies. The application allows users to perform various CRUD operations (Create, Read, Update, Delete) through an intuitive interface, with a sidebar for easy navigation. There is no login process as described in the requirements.

## Table of Contents
- [About the Project](#about-the-project)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Endpoints](#endpoints)
- [Contributing](#contributing)
- [License](#license)

---

## About the Project

This is a Java J2EE web application that allows users to perform CRUD operations on data using a simple interface. The application includes:

- **Registration**: Users can register through the `index.jsp` page.
- **Dashboard**: Once registered, users will have access to a sidebar with a dashboard containing links to the processes like Save, Update, Delete, and Load Data.
- **Form Validation**: All fields must be filled in every form before submitting, ensuring data integrity.
- **No Login Required**: This web application does not include a login system, as per the assessment requirements.

## Features

- **Register**: Go to the `index.jsp` page and complete the registration process to access further features.
- **Sidebar**: In the registration page, you’ll see a sidebar. From there, you can navigate to:
  - **Dashboard**: The dashboard contains links to different processes such as:
    - **Save Data**: Add new records to the system.
    - **Update Data**: Edit existing records.
    - **Delete Data**: Remove records from the system.
    - **Load Data**: View and load existing data.
- **Form Validation**: All fields in the forms must be filled before any action can be completed. If any field is left empty, the process will be blocked.
  
## Technologies Used

- **Java J2EE**: Java Platform, Enterprise Edition
- **JSP (JavaServer Pages)**: For rendering the dynamic web content
- **Servlets**: For managing HTTP requests and responses
- **JDBC (Java Database Connectivity)**: For database interactions
- **HTML/CSS**: For frontend UI design

## Installation

To set up and run the project locally, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Manulakavishka/Java-J2EE-web-application.git
   
2. **Set up the application in your IDE:**

- Open the project in your IDE (e.g., IntelliJ IDEA, Eclipse).
- Ensure your project is configured with the correct Java version (e.g., JDK 8 or later) and a compatible servlet container (e.g., Apache Tomcat).

3. **Set up the Database (if applicable):**

- Set up a MySQL or any other relational database that you are using for this application.
- Update database connection settings in the project’s configuration file (e.g., db.properties or in your web.xml).

4. **Deploy the Application:**

- Deploy the application on a servlet container like Apache Tomcat or Jetty.
- Start the server and open the application in your browser (e.g., http://localhost:8080).

## Configuration

- **Database Configuration**: Ensure the MySQL database connection details in the `config` file match your MySQL setup.

## Usage

1. **Go to the Index Page:**

- Open the index.jsp page to begin the registration process.

2. **Register:**

- Fill in all required fields in the registration form to proceed.

3. **Navigate the Sidebar:**

- After registration, you will have access to the sidebar. From there, you can navigate to the dashboard to access the processes like Save, Update, Delete, and Load Data.

4. **Perform CRUD Operations:**

- Save: Fill out the necessary fields and submit to save new data.
- Update: Modify existing data by selecting records and editing the fields.
- Delete: Delete records by selecting them and confirming the action.
- Load: View and load existing data.

5. **Form Validation:**

- Ensure all fields are filled in every form. If not, the application will block the process and prompt the user to fill in the required information.

## Endpoints

The application uses the following HTTP status codes for various operations:

- 200 OK: Indicates that the operation was successful (e.g., data was saved, updated, or loaded correctly).
- 400 Bad Request: This status is returned when a required field is missing or an invalid request is made (e.g., trying to submit a form with empty fields).
- 500 Internal Server Error: This status is returned in case of a server-side error (e.g., database connection failure or other unexpected errors).

## Contributing

Contributions are welcome! Please feel free to open issues or submit pull requests to improve the application.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
