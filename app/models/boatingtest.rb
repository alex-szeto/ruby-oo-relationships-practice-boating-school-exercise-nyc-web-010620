class BoatingTest
    attr_reader :student, :instructor, :testname
    attr_accessor :status
    @@all = []

    def initialize(student, testname, status, instructor) #should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
        @@all << self
        @student = student
        @status = status
        @instructor = instructor
        @testname = testname
    end

    def self.all #BoatingTest.all returns an array of all boating tests
        @@all
    end

end
