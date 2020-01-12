class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @@all << self

        @first_name = first_name #should initialize with first_name
    end

    def self.all #Student.all should return all of the student instances
        @@all 
    end

    def add_boating_test(student, testname, instructor) #Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
        boatingtest = BoatingTest.new(student, testname, "Started",  instructor)
    end

    def self.find_student(input) #Student.find_student will take in a first name and output the student (Object) with that name
        @@all.find{|student| student.first_name == input}
    end

    def grade_percentage #Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
        Boatingtest.all.select{|test| test.student == self}
    end


end
