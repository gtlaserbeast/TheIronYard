#Little old LandLady app
![LandLady](http://fellowshipofminds.files.wordpress.com/2010/12/old-woman.jpg =200x)
##Rentals
1. geolocation map
    	**2hrs**
2. upforrent/rented
**    	3hrs**
3. repairs needed
    	**4hrs**
4. repairs completed
      	**2hrs**
5. preferred repairmen *stretch-goal*    	
6. current_occupants
		**1hr**
7. paid/late/pending
		**4hrs**
8. urgent texting - twillio *stretch-goal*
		**3hrs?**
9. stripe for payment *stretch-goal*
		**3hrs?**
10. workflow for pay, repairs, vacancy AJAX
		**8hrs**
	1. pay
		pending, paid_on_time, late, paid-late
	2. repairs
		in need of repair, repaired
	3. vacancy
		vacant, up-for-rent, rented

##Renters
1. submit work requests
	**4hrs**
2. contact landlord
	**3hrs**
3. online pay *stretch-goal*
4. urgent text messaging *stretch-goal* [twilio blog](https://www.twilio.com/blog/2014/02/twilio-on-rails-integrating-twilio-with-your-rails-4-app.html "a guide for twilio and rails 4")

###Tables/Schema
**4hrs**

1. owner 
	- name
	- email
	- mailing_address
  	- phone
2. rental belongs_to owner
	- payment_state
	- address
	- lat/long geocode
	- description
	- tenants
	- repairs
3. tenant belongs_to rental
  	- name
  	- email
  	- phone
  	- workphone/workaddress *not required but on form
4. repair belongs_to rental
	- category (plumbing/carpentry/yard)
	- description
	- workflow-> in_need_of_repair/	schedule_for_repair/repaired
		- list of repairmen based on category?
5. categories for a work request
	- plumbing, blah
	- list of repair people
6. correspondance of some sort
	- texting the landlord for emergency requests
	- comments on work orders to keep track of progress
	
	
