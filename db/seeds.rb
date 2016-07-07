# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create(name:"Crazy project", description:"you wont believe it").time_entries.create(hours:5, minutes:20, date: 3.days.ago)

project = Project.create(name:"Time tracking app")
project.time_entries.create(hours:6, minutes:40, date: 2.weeks.ago)

Project.create(name:"Recipees", description:"for all the foodies")
Project.create(name:"Crazy project2", description:"2you wont believe it")
Project.create(name:"Time tracking app3")
Project.create(name:"Recipees3", description:"for all the foodie345s")
Project.create(name:"Crazy project5", description:"you wont beli34534eve it")
Project.create(name:"Time tracking5 app")
Project.create(name:"Recipee234s", description:"for all th345435e foodies")


another_project = Project.create(name:"Crazy proj456ect", description:"you43 wont believe it")

TimeEntry.create(hours:6).project = another_project

TimeEntry.create(hours:4, minutes:40, date: 1.year.ago, project: project)
TimeEntry.create(hours:22, minutes:40, date: 1.day.ago, project: project)
TimeEntry.create(hours:5, minutes:20, date: 3.days.ago, project: project)
TimeEntry.create(hours:6, minutes:4, date: 1.year.ago, project: project)
