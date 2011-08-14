# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
FieldType.create(name: 'float', value_validate: '/\A(\d)+(\.)?(\d){1,10}\z/')   
FieldType.create(name: 'colorset', value_validate: '/\A#([0-9][a-f]){3,6}\z/')      #color set #1234ad
FieldType.create(name: 'integer', value_validate: '/\A([1-9]{1}[0-9]*|0)\z/')
FieldType.create(name: 'email', value_validate: '/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/')
FieldType.create(name: 'boolean', value_validate: '/\A(False|True|false|true|FALSE|TRUE)\z/')
