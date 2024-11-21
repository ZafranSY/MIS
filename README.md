# Management Information System for TV Pusat Sumber Sekolah (PSS)

### Overview

This project aims to develop a **Management Information System** for the **TV Pusat Sumber Sekolah (PSS)** program. The system centralizes information about the program's status in various schools to improve monitoring, decision-making, and resource allocation by the PSS management team. 

The project uses **Spring Tool Suite (STS)** to create a dynamic web application with MVC architecture. It includes modules for **user authentication**, **data management**, and **dashboard interfaces** for both administrators and users.

---

### Features

1. **Centralized Database**  
   A centralized system for storing and accessing information about:
   - Branding names
   - Crew profiles
   - Studio and equipment levels
   - YouTube channel links
   - Other relevant program details

2. **User-Friendly Interface**  
   - Easy data input and retrieval for users and administrators.  
   - Responsive design to enhance usability.

3. **Search and Filter**  
   - Quickly identify schools that require additional support or resources.

4. **Dashboards**  
   - **Admin Dashboard**: Comprehensive control over program data and resource allocation.  
   - **User Dashboard**: Personalized view of program-related information.

5. **Content Library Management**  
   - Upload, categorize, and manage student-generated content for YouTube channels.  
   - View content usage statistics.

---

### Benefits

- **Improved Efficiency**: Automates tasks like tracking equipment and managing crew profiles.  
- **Enhanced Communication**: Facilitates seamless communication between schools and central management.  
- **Better Decision-Making**: Provides accurate and timely data for effective management.  
- **Resource Allocation**: Simplifies identifying schools that need additional support.  

---

### Tech Stack

- **Backend**: Java, Spring Framework (Spring MVC)  
- **Frontend**: JSP, HTML, CSS  
- **Database**: MySQL  
- **Tools**: Spring Tool Suite (STS), Maven  

---

### Project Structure

```
src/main/java/com/pss/tv
├── controller
│   ├── LoginController.java
│   ├── UserDashboardController.java
│   └── AdminDashboardController.java
├── model
│   ├── Auth.java
│   ├── User.java
│   └── Dashboard.java
└── repository
    └── UserRepository.java
src/main/resources/templates
├── LoginPage.jsp
├── UserDashboard.jsp
└── AdminDashboard.jsp
src/main/resources/application.properties
```

---

### Prerequisites

1. **Java Development Kit (JDK)** (version 11 or later)  
2. **Spring Tool Suite (STS)** or any IDE with Spring support  
3. **MySQL** (for database setup)  
4. **Maven** (for project dependencies)  

---

### Setup Instructions

1. **Clone the repository**  
   ```bash
   git clone https://github.com/yourusername/TV-PSS-MIS.git
   cd TV-PSS-MIS
   ```

2. **Configure the database**  
   - Open `src/main/resources/application.properties` and update the database configuration:  
     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/tv_pss_db
     spring.datasource.username=your-username
     spring.datasource.password=your-password
     ```

3. **Run the application**  
   - Open the project in STS and build it using Maven.  
   - Start the application by running the `main` class.  

4. **Access the application**  
   - Open your browser and navigate to `http://localhost:8080`.  

---

### Usage

1. **Login**  
   - Use admin credentials to access the Admin Dashboard.  
   - Standard users can log in to access the User Dashboard.

2. **Admin Features**  
   - Manage program details for all schools.  
   - View dashboards to monitor program performance.  

3. **User Features**  
   - View and update program details specific to their school.  

---

### Future Improvements

- Implement REST APIs for better integration with other systems.  
- Add role-based access control for enhanced security.  
- Integrate analytics for performance evaluation and reporting.  
- Introduce mobile responsiveness for better accessibility.  

---

### Contributing

Contributions are welcome! Please follow these steps:  

1. Fork the repository.  
2. Create a new branch.  
   ```bash
   git checkout -b feature-name
   ```
3. Make your changes and commit them.  
   ```bash
   git commit -m "Add feature-name"
   ```
4. Push to the branch.  
   ```bash
   git push origin feature-name
   ```
5. Create a pull request.

---

### License

This project is licensed under the [MIT License](LICENSE).  

---

### Contact

For any inquiries or issues, feel free to reach out:  
- **Email**: zafranzafran0234@gmail.com
- **GitHub**: [zafransy](https://github.com/ZafranSY)
