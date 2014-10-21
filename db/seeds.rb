# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create_with(:password => "123456", :name => "Shahadat", :email => "tuhin2006i@gmail.com", :phone => "3666430393").find_or_create_by(:username => "demouser")

todo = user.todos.first
todo ||= (user.todos.create(:title => "First Todo", :description => "This is the first todo", :deadline => '2014-10-27 16:34:03', :status => 'pending')
todo1 = user.todos.create(:title => "Second Todo", :description => "This is the second todo", :deadline => '2014-11-17 16:34:03', :status => 'pending')
todo1 = user.todos.create(:title => "Third Todo", :description => "This is the Third todo", :deadline => '2014-12-19 16:34:03', :status => 'pending')
todo1 = user.todos.create(:title => "Fourth Todo", :description => "This is the Fourth todo", :deadline => '2015-1-17 16:34:03', :completion_date => '2015-1-15 16:34:03', :status => 'completed')
todo1 = user.todos.create(:title => "Fifth Todo", :description => "This is the Fifth todo", :deadline => '2014-12-25 16:34:03', :completion_date => '2014-12-17 16:34:03', :status => 'completed')
todo1 = user.todos.create(:title => "Sixth Todo", :description => "This is the Sixth todo", :deadline => '2014-12-27 16:34:03', :completion_date => '2014-12-20 16:34:03', :status => 'completed')
todo1 = user.todos.create(:title => "Seventh Todo", :description => "This is the Seventh todo", :deadline => '2014-11-26 16:34:03', :completion_date => '2014-12-10 16:34:03', :status => 'overdue')
todo1 = user.todos.create(:title => "Eighth Todo", :description => "This is the Eighth todo", :deadline => '2014-11-26 16:34:03', :completion_date => '2014-12-12 16:34:03', :status => 'overdue'))