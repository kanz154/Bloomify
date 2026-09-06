🌸BLOOMIFY

Bloomify is a Spring Boot web application/Full stack application for a flower shop that handles booking of flowers(bouquets) and also event decor booking. 
It provides a platform to browse flowers, register/login users, and place bookings, whether it's a simple flower delivery or a full floral setup for a birthday, 
wedding, outdoor gathering, indoor setup or corporate/office celebration.

FEATURES

User Management: Secure user registration and login, with session-based authentication, logged-in users see a "Logout" option instead of "Sign In".
Flower Inventory: A live flower catalog pulled straight from the database, showing each flower's name, image, price, and current stock status (In Stock / 
Out of Stock).
Event Setups: A dedicated Events section showcasing setup options: -Birthday Party, Wedding, Outdoor Setup, Indoor Setup, and Corporate/Office Setup.
Booking System: A single booking form handles both direct flower orders and event bookings. On submission, the app automatically checks stock:
If enough stock is available → the order is Accepted, stock is reduced, and the customer gets a confirmation receipt.
If not enough stock is available → the order is Denied, with a message asking the customer to try a smaller quantity or a different flower.
Booking Receipt: After submitting a booking, the customer sees a detailed receipt page with their name, flower, quantity, order type, address details, event type
(if applicable), date, status, and total price.
About & Contact: An About section explaining why to choose Bloomify, plus a Contact Us with email and location.
Design: A single-page layout (no page reloads between sections) with a pink-and-white theme, a falling flower-petal animation, and an elegant serif heading font.

TECH STACK

Backend: Java, Spring Boot, Spring Data JPA
Database: MySQL (via XAMPP)
Frontend: HTML, CSS, Thymeleaf (used minimally only for dynamic data binding like showing live stock, price, and booking details; no complex templating)
