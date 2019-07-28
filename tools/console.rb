require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
stan = Student.new('Stan')
mona = Student.new('Mona')
watson = Student.new('Watson')
skunky = Student.new('Skunky')
spongebob = Instructor.new('Spongebob')
patrick = Instructor.new('Patrick')
sandy = Instructor.new('Sandy')
speedboat_test = 'speedboat'
cruiseship_test = 'cruiseship'
destroyer_test = 'destroyer'
BoatingTest.new(stan, destroyer_test, 'passed', patrick)
BoatingTest.new(stan, cruiseship_test, 'failed', sandy)
stan.add_boating_test(speedboat_test, 'passed', spongebob)
mona.add_boating_test(cruiseship_test, 'failed', patrick)
watson.add_boating_test(destroyer_test, 'passed', sandy)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

