# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


first_company = Company.create(name:'Google', active: false)
second_company = Company.create(name: 'Tesla', active:true)
third_company = Company.create(name: 'Facebook', active:true)

first_company.products.create(name: 'Chrome', active: true, description: 'Freeware web browser developed by Google')
first_company.products.create(name: 'Android', active: false, description: 'Mobile operating system developed by Google')
second_company.products.create(name: 'Tesla Model X', active: false, description: 'Full-sized, all-electric, luxury, crossover SUV made by Tesla Inc. that uses falcon wing doors for access to the second and third row seats.')
second_company.products.create(name: 'SolarCity', active: true, description: 'American company that specializes in solar energy services')
third_company.products.create(name: 'Whatsapp', active: true, description: 'Freeware, cross-platform and end-to-end encrypted instant messaging application for smartphones')
third_company.products.create(name: 'Oculus VR', active: true, description: 'Virtual reality headset designed for video gaming, and launched ')
