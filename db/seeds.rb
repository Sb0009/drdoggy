# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Character.create(name: 'Luke', movie: movies.first)
d1 = Doctor.create(name: 'John', email: 'cardio@gmail.com', location: 'Paris')
d2 = Doctor.create(name: 'Houssem', email: 'the Boss.com', location: 'Hybride')

p1 = Patient.create(name: 'Dan', location: 'NYC', condition: 'loves cookies so much')
p2 = Patient.create(name: 'Luke', location: 'Paris', condition: 'Stop smoking ')

a1 = Appointment.create(patient: p2, doctor: d1, appointment_time: Time.now)
a2 = Appointment.create(patient: p1, doctor: d2, appointment_time: Time.now)
a3 = Appointment.create(patient: p2, doctor: d1, appointment_time: Time.now)

require 'faker'
require 'date'
Doctor.destroy_all
# City.destroy_all
# Specialty.destroy_all
Patient.destroy_all
