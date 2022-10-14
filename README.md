![3](https://user-images.githubusercontent.com/96126445/195829862-8ff6ae7a-db2c-4c34-a0ed-e0459daec07c.png)

 <p><img src="https://user-images.githubusercontent.com/96126445/195827857-41369323-e1ae-4f0c-8d4d-419579ee6071.png" alt="landingpage-doctorclinic" width="350 px"><img src="https://user-images.githubusercontent.com/96126445/195829435-8b6ba9bc-248c-4f1a-aec3-99ecc3f26607.png"
 alt="patient-already-login-doctorclinic" width="350 px"></p> 




# Full Stack Project




# DrDoggy
### An API for  scheduling medical appointment platform built with Ruby on Rails.



## Technologies

- Ruby on Rails version 7.0.4
- Ruby 3.1.2 
- PostgreSQL
- MVC Pattern
- Devise
- Test Driven Development (TDD with rspec and capybara)

## CRUD
![root#index-page](./public/image/root-index-page-with-category-sort.png)
![show-page](./public/image/show-page.png)
![create-page](./public/image/create-page.png)
![edit-page](./public/image/edit-page.png


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
