




 <p><img src="https://user-images.githubusercontent.com/96126445/196426267-ef783879-6172-4ab5-9506-7fd53e41b1b3.png"
 alt="patient-already" width:"33 px" display: flex;

<img src="https://user-images.githubusercontent.com/96126445/196556057-f0e868cb-cb1d-4416-8a45-af35e4504b1d.png" style=" width: 33px ; display:center "  

<img src="https://user-images.githubusercontent.com/96126445/196555805-37eca7f8-ef9b-401c-828c-d9057861ee06.png style=" width: 33px  " 
<img src= "https://user-images.githubusercontent.com/96126445/196555838-8f0db65d-367f-4812-a5fd-ec1aa3d471e7.png"style=" width:33 px ; display: justify:content "  


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
| POST   | appointments | False  | scheduling an appointment              |
| GET    | appointments | False  | Fetch appointments for a specific user |
| GET    | appointments | False  | Admin fetches all appointments         |

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
