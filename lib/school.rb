class School

  attr_reader :roster

   def initialize(name)
     @name = name
     @roster = {}
   end

   def add_student(name, grade)
     if !@roster.has_key?(grade)
       @roster[grade] = []
     end
     @roster[grade] << name
   end

   def grade(grade)
     students_array = @roster[grade]
     students_array
   end

   def sort
     sorted = {}
     @roster.each do |grade, students|
       sorted[grade] = students.sort
     end
     sorted
   end

end
