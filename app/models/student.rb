class Student
    attr_accessor :first_name
    
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(boating_test_name, boating_test_status, instructor)
        BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
    end
    
    def self.find_student(name)
        @@all.select {|student| student.first_name == name}
    end
# Student#grade_percentage should return 
# the percentage of tests that the student has 
# passed, a Float (so if a student has passed 
# 3 / 9 tests that they've taken, 
# this method should return the Float 33.33)
    def grade_percentage
        total = BoatingTest.all.select {|test|test.student == self}
        passed = total.select {|test| test.boating_test_status == "passed"}
        failed = total.select {|test| test.boating_test_status == "failed"}
        passed.count.to_f / total.count.to_f * 100.0
    end                     



end
