class Employee < ApplicationRecord
	has_many :forms

	after_initialize do |user|
	   puts "You have initialized an object!"
	end

	after_find do |user|
	   puts "You have found an object!"
	end

	after_create :create_the_object
	after_save :saving_the_object
	after_commit :commit_the_object


	def create_the_object
		puts "creating of object"
	end

	def saving_the_object
		puts "saving the object"
	end

	def commit_the_object
		puts "commit the object"
	end

	# practice_app_development=# explain select * from employees where salary = 50;
 #                                         QUERY PLAN                                         
	# --------------------------------------------------------------------------------------------
	#  Index Scan using index_employees_on_salary on employees  (cost=0.42..8.44 rows=1 width=39)
	#    Index Cond: (salary = 50)
	# (2 rows)

	# practice_app_development=# explain select * from employees where salary = 50 and name = 'abhijeet';
	#                                         QUERY PLAN                                        
	# ------------------------------------------------------------------------------------------
	#  Index Scan using index_employees_on_name on employees  (cost=0.42..8.45 rows=1 width=39)
	#    Index Cond: ((name)::text = 'abhijeet'::text)
	#    Filter: (salary = 50)
	# (3 rows)

	# practice_app_development=# explain select * from employees where  name = 'abhijeet';
	#                                         QUERY PLAN                                        
	# ------------------------------------------------------------------------------------------
	#  Index Scan using index_employees_on_name on employees  (cost=0.42..8.44 rows=1 width=39)
	#    Index Cond: ((name)::text = 'abhijeet'::text)

end
