!
[dogg](https://user-images.githubusercontent.com/96126445/194939158-1f000e2a-97c0-413f-a870-e0c928c7bc97.JPG)

# Full Stack Project




# PatientLib
### An API for A scheduling medical appointment platform built with Ruby on Rails.



## Built With

- Ruby on Rails version 7.0.4
-
- PostgreSQL


## Endpoints : /api/v1/

Method|End point | Public |Action
-----------|----------|--------------|------
POST | sign_in | True | Login a registered user
POST | sign_up | True | Register a new user
DELETE | log_out| False  | Logout a user
POST | doctor | False | Admin creates doctor
PATCH | doctor/:id | False | Admin edits doctor's details
DELETE | doctor/:id | False | Admin destroy doctor's details
GET | doctor | False | Fetch all doctor
GET | doctor/:id | False | Fetch a specific doctor
POST | appointments | False | scheduling an appointment
GET | appointments | False | Fetch appointments for a specific user
GET | appointments | False | Admin fetches all appointments  

## Deployment 🧧

[Backend APIs Live Link](https://patientlib.herokuapp.com/)

[Frontend Live Link](https://patientlib.herokuapp.com/)

## Getting Started

To get a copy up and running follow these simple example steps:-

- Clone `https://github.com/Sb0009/patientlib` to your local machine.
- Run `bundle install` to install dependancies.
- Run `rails s` to to run the application in development mode.
- Use postman to test the endpoints.

## Automated Tests

> bundle exec rspec
## Author

👤 **Siham Badyine**

- Github: [@Sb0009](https://github.com/Sb0009)
- Linkedin: [Siham Badyine](https://www.linkedin.com/in/siham-badyine/)
