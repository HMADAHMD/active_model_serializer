# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Employee.destroy_all
Manager.destroy_all

managers = (1..20).map do
  Manager.create!(
    name: "manager"
  )
end

employee = (1..50).map do
  Employee.create!(
    name: "employee",
    email: "emp@gmail.com",
    dob: "17-01-1988",
    mobile: "8879544321",
    designation: "Senior Developer",
    salary: 35000,
    manager: managers.sample
  )
end
