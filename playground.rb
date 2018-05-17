# if you have not installed the needed gems, please do the following:
# gem install sqlite3
# gem install activerecord

require "sqlite3"
require "active_record"

# this line configures ActiveRecord to connect to a sqlite3 database in the same folder named "students.sqlite3"
ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "./students.sqlite3")

# This sets up ActiveRecord to use Ruby OOP with SQL data
class Student < ActiveRecord::Base
end



####################################
# Write your test code here

# 1. Create a new student using new and save

# student = Student.new(name: "Harry Potter", email: "harry@example.com", age: 18)
# student.save
# p student

# 2. Create a new student using create

# student = Student.create(name: "Luke Watt", email: "luke@example.com", age: 23)

# 3. Select all students
# p Student.all

# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?
# Why can't you do Student.name or Student.email?
# Student.name = puts "Student"

# 4. Select the first student
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?
# p Student.first

# 5. Select the last student
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?
# p Student.last

# 6. Use each to iterate through the #<ActiveRecord::Relation> object to display the name of each student

# Student.all.each do |student|
#     p student.name
# end

# 7. Find student by the name Dr. Lois Pfeff using where.
# pay attention to the object that is returned to you, is it the Student object or Active Record relation object?

# student = Student.where(name: "Dr. Lois Pfeff")
# p student

# What will the following return to you? (remember to comment out the code!)
# p student.id
#student.where gives back an array []. To get id out of array, I need to write student[].id
# student = Student.where(name: "Dr. Lois Pfeff")
# p student[0].id

# p student.name

# student = Student.where(name: "Dr. Lois Pfeff")
# p student[0].name

# p student.email

student = Student.where(name: "Dr. Lois Pfeff")
p student[0].email

# p student.age

# student = Student.where(name: "Dr. Lois Pfeff")
# p student[0].age


# 8. Find student by name using find_by
# pay attention to the object that is returned to you, is it the Student object or Active Record relation object?

# student = Student.find_by(name: "Dr. Lois Pfeff")
# p student

# What will the following return to you?
# p student.id
# find_by returns object from students class and id would return students id
# student = Student.find_by(name: "Dr. Lois Pfeff")
# p student.id

# # p student.name
# student = Student.find_by(name: "Dr. Lois Pfeff")
# p student.name

# # p student.email

# student = Student.find_by(name: "Dr. Lois Pfeff")
# p student.email

# p student.age

# student = Student.find_by(name: "Dr. Lois Pfeff")
# p student.age

# Do research on the difference between "where" and "find_by".
# where returns active record relation object
# find_by returns student object

# 9. Find the student with id = 7 using find and find_by
# student = Student.find_by(id: 7)
# p student

# p Student.find(7)

# p Student.find_by(id: 7)

# pay attention to the object that is returned to you, is it the User object or Active Record relation object?


# 10. Update information for student with id = 5 using student.email and save. Change the student's email to elsie@example.com

# student = Student.find(5)
# p student
# student.email = "elsie@example.com"
# student.save
# p student

# 11. Now use update to update this student's age to 21.

# student = Student.find(5)
# p student
# student.update(age: 21)
# p student

# 12. Delete student with id 21 using delete

# student = Student.find(21)
# student.delete
# p Student.all.count

# 13. Delete student with id 22 using destroy

# student = Student.find(22)
# student.destroy
# p Student.all.count
























