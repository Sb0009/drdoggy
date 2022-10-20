





  <p><img src="https://user-images.githubusercontent.com/96126445/196426267-ef783879-6172-4ab5-9506-7fd53e41b1b3.png" alt="drdoggy"
 width="150 px">
 <img src="https://user-images.githubusercontent.com/96126445/196557250-9c8177e0-7389-42d7-9cf5-c0ff590410c5.png" alt="login" width="150 px">
  <img src="https://user-images.githubusercontent.com/96126445/196909958-0989cafb-8b15-4c7f-afb5-bb2559b236c5.png" alt="404" width="150 px">
    <img src="https://user-images.githubusercontent.com/96126445/196910946-7d738740-18ad-498a-bb28-97c485d28783.png" alt="404" width="150 px">
</p>
 

</p> 



# Full Stack Project



# DrDoggy
### An API for  scheduling medical appointment platform built with Ruby on Rails.



## Technologies

- Ruby on Rails version 7.0.4
- Ruby 3.1.2 
- PostgresSQL
- MVC Pattern
- Devise
- Test Driven Development (TDD with rspec and capybara)

## CRUD
Patients
/ Doctors
- Sign up 
- Sign in




## Endpoints : /api/v1/

| Method | End point    | Public | Action                                 |
|--------|--------------|--------|----------------------------------------|
| POST   | sign_in      | True   | Login a registered user                |
| POST   | sign_up      | True   | Register a new user                    |
| DELETE | log_out      | False  | Logout a user                          |
| POST   | doctor       | False  | Admin creates doctor                   |
| PATCH  | doctor/:id   | False  | Admin edits doctor's details           |
| DELETE | doctor/:id   | False  | Admin destroy doctor's details         |
| GET    | doctor       | False  | Fetch all doctor                       |
| GET    | doctor/:id   | False  | Fetch a specific doctor                |
| POST   | appointments | False  | scheduling an appointment      NO      |
| GET    | appointments | False  | Fetch appointments for  NO             |
| GET    | appointments | False  | Admin fetches all appointments  NO     |

## Deployment 🧧 

[Backend APIs Live Link](https://drdoggy.herokuapp.com/)

[Frontend Live Link](https://drdoggy.herokuapp.com/)

## Getting Started

To get a copy up and running follow these simple example steps:-

- Clone `https://github.com/Sb0009/drdoggy` to your local machine.
- Run `bundle install` to install dependancies.
- Run `rails s` to to run the application in development mode.
- Use postman to test the endpoints.

## Automated Tests

> bundle exec rspec
## Author

👤 **Siham Badyine**

- Github: [@Sb0009](https://github.com/Sb0009)
- Linkedin: [Siham Badyine](https://www.linkedin.com/in/siham-badyine/)
