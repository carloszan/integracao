# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

g = Gym.create!(name: "Fitness forte", cnpj: "1234567891212", tel: "33311111")

e = Employee.create!(name: "Brunao atleticano", password: "123456",
password_confirmation: "123456", tel: "33327323", cpf: "12345678912",
email: "admin@admin.com", gym: g)

s = Student.create!(name: "Elcim 90g", password: "123456",
password_confirmation: "123456", tel: "33327323",
email: "student@admin.com", gym: g)

Student.create!(name: "Caio encheção de saco", password: "123456",
password_confirmation: "123456", tel: "33327323",
email: "student2@admin.com", gym: g, age: 24)

Book.create!(hour: Time.now, employee: e, student: s)