class Student < ActiveRecord::Base
  has_many :student_courses
  has_many :courses, :through => :student_courses

  validates_format_of :email, :with => /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/
end
