# README

🏆 Employee Management System (Ruby on Rails)

The Employee Management System is a fully functional CRUD-based web application built using Ruby on Rails, designed to manage both employees and departments within an organization.
This project demonstrates complete implementation of Rails database modeling, validations, relational associations, responsive UI using Bootstrap, and additional features like search, filtering, and validation error handling. It is ideal for learning & demonstrating real-world CRUD and full stack application flow.

The application allows administrators to create departments and assign employees to departments. Each employee contains personal details, salary, department association, and strict validations (unique email, salary > 0, valid email format). The project includes clean UI, icons, responsive tables, intuitive forms, and automatic cascading delete (when a department is deleted, all its employees are also deleted).

⭐ Features Implemented
✔ Employee CRUD (Create, Read, Update, Delete)

✔ Department CRUD

✔ Search Employees (by name or email)

✔ Filter Employees by Department

✔ Salary & Email Validations

✔ Unique Email Constraint

✔ Employee belongs_to Department

✔ Department has_many Employees (dependent destroy)

✔ Bootstrap UI (icons, buttons, layout)

✔ Fully responsive mobile-friendly design

✔ Proper error messages in forms (inline red messages)

✔ Custom currency format (₹ Rupee)



🚀 How to Run the Project (Windows)
1. Install Ruby + Rails
ruby -v
gem install rails -v 7.1.6

2. Install Project Dependencies
   bundle install

3. Setup the Database
   rails db:create
   rails db:migrate

4. Start the Local Server
rails s

5. Visit in Browser
http://localhost:3000/departments   ← default homepage
http://localhost:3000/employees

rails db:create
