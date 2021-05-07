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
end
