# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = Location.create([
  {name: 'TIY-Atlanta', address: 'The Hood'},
  {name: 'TIY-Charleston', address: '510 Mill St.'}, 
  {name: 'TIY-Greenville', address: 'Upstate'}, 
  {name: 'TIY-Mars', address: 'The Red Planet'}, 
  {name: 'TIY-Saturn', address: '7 Rings St.'}, 
  {name: 'TIY-Uranus', address: 'No Sun St.'}, 
  {name: 'TIY-Venus', address: 'Lady Ln.'}
  ])
courses = Course.create([
  {title: 'Ruby on Rails Engineering', description: 'Databases and stuff'}, 
  {title: 'Front-End Web Dev', description: 'Pretty pictures'}, 
  {title: 'iOS App Engineering', description: 'Bourgeois phones'}, 
  {title: 'Andriod App Engineering', description: 'Plebian phones'}, 
  {title: 'Shapes', description: 'Learning about shapes'}, 
  {title: 'Finite Mathematics', description: 'Logic and shit'}, 
  {title: 'Workplace: 101', description: 'beurocracy primer'}
  ])

users = User.create([
  {name: 'John Doe', email: 'john@gmail.com', password: 'password', password_confirmation: 'password'},
  {name: 'Jane Doe', email: 'jane@doe.com', password: 'password', password_confirmation: 'password' }, 
  {name: 'Nope McGee', email: 'nope@nope.com', password: 'password', password_confirmation: 'password' }, 
  {name: 'Don Know', email: 'do@know.com', password: 'password', password_confirmation: 'password' }, 
  {name: 'Snowden', email: 'wheres@waldo.com', password: 'password', password_confirmation: 'password' }, 
  {name: 'Nick B', email: 'nick@nick.com', password: 'password', password_confirmation: 'password' }, 
  {name: 'Mike H', email: 'kill@them.com', password: 'password', password_confirmation: 'password' }, 
  {name: 'Mandy K', email: 'mandy@mandy.com', password: 'password', password_confirmation: 'password'},
  {name: 'Will F', email: 'will@will.com', password: 'password', password_confirmation: 'password', admin: '1'},
  ])
cohorts = Cohort.create([
  {start_date: '2015-12-31', location_id: '1', course_id: '1'}, 
  {start_date: '2015-12-31', location_id: '1', course_id: '2'}, 
  {start_date: '2015-12-31', location_id: '2', course_id: '2'}, 
  {start_date: '2015-12-31', location_id: '3', course_id: '3'}, 
  {start_date: '2015-12-31', location_id: '4', course_id: '4'}, 
  {start_date: '2015-12-31', location_id: '5', course_id: '5'}, 
  ])
enrollments = Enrollment.create([
  {user_id: '1', cohort_id: '1'}, 
  {user_id: '1', cohort_id: '2'}, 
  {user_id: '1', cohort_id: '3'}, 
  {user_id: '1', cohort_id: '4'}, 
  {user_id: '2', cohort_id: '5'}, 
  {user_id: '2', cohort_id: '6'}, 
  {user_id: '3', cohort_id: '1'}, 
  {user_id: '3', cohort_id: '4'}, 
  {user_id: '4', cohort_id: '2'}, 
  {user_id: '4', cohort_id: '5'}, 
  {user_id: '5', cohort_id: '1'}, 
  {user_id: '5', cohort_id: '3'}, 
  {user_id: '6', cohort_id: '2'}, 
  {user_id: '6', cohort_id: '6'}, 
  {user_id: '7', cohort_id: '3'}, 
  {user_id: '7', cohort_id: '5'}
  ])
assignments = Assignment.create([
  {name: 'Sinatra Server', description: 'Simple Webserver', due_date: '2016-12-31', cohort_id: '1'}, 
  {name: 'Horse Race', description: 'Ruby Horse Race', due_date: '2016-12-31', cohort_id: '1'}, 
  {name: 'Jquery', description: 'Make it responsive', due_date: '2016-12-31', cohort_id: '2'}, 
  {name: 'css', description: 'Make it pretty', due_date: '2016-12-31', cohort_id: '2'}, 
  {name: 'flappy bird and existentialism', description: 'waiting for seagull', due_date: '2016-12-31', cohort_id: '3'}, 
  {name: 'phones', description: 'phones', due_date: '2016-12-31', cohort_id: '4'}, 
  {name: 'pigeonhole principle', description: 'judgement calls', due_date: '2016-12-31', cohort_id: '5'}, 
  ])