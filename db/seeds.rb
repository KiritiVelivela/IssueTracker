# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'factory_girl'
require 'faker'
groups = %w{software equipment desktop network helpdesk admin}
status = ['open', 'in progress', 'pending customer response', 'contact customer', 'closed']

admin = User.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password',
                    first_name: 'Admin', last_name: 'Example', role: 'admin')
tech = User.create(email: 'tech@example.com', password: 'password', password_confirmation: 'password',
                   first_name: 'Technician', last_name: 'Example', role: 'technician')
customer = User.create(email: 'customer@example.com', password: 'password', password_confirmation: 'password',
                       first_name: 'Customer', last_name: 'Example', role: 'customer')

groups.each do |group|
  Group.create(name: group)
end

admin.add_group('admin')
admin.add_group('software')

tech.add_group('helpdesk')


