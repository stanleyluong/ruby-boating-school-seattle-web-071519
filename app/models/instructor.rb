class Instructor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    

    def pass_student(student, boating_test_name)
        found = BoatingTest.all.find do |boatingtest|
            boatingtest.student == student && boatingtest.boating_test_name == boating_test_name
        end
        if found != nil    
            found.boating_test_status = 'passed' 
        else 
            BoatingTest.new(student, boating_test_name, 'passed' , self)
        end 
    end

    def fail_student(student, boating_test_name)
        found = BoatingTest.all.find do |boatingtest|
            boatingtest.student == student && boatingtest.boating_test_name == boating_test_name
        end
        if found !=nil
            found.boating_test_status = 'failed'
        else
            BoatingTest.new(student, boating_test_name, 'failed', self)
        end 
    end



end
