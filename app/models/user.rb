class User < ApplicationRecord
	has_one :school_admin, foreign_key: :user_id, class_name: 'SchoolAdmin'
	has_one :dormitory_admin#, foreign_key: :dormitory_id

	#union query

	# school_admin = User.first.school_admin
	# dormitory_admin = User.last.dormitory_admin

	# q1 =  User.joins(:school_admin).where(school_admin: school_admin).select("users.id, users.username, school_admins.name, school_admins.phone")

	# q2 = User.joins(:dormitory_admin).where(dormitory_admin: dormitory_admin).select("users.id, users.username, dormitory_admins.name, dormitory_admins.phone")


	# User.from("(#{User.joins(:school_admin).where(school_admin: school_admin).select("users.id, users.username, school_admins.name, school_admins.phone").to_sql} UNION #{User.joins(:dormitory_admin).where(dormitory_admin: dormitory_admin).select("users.id, users.username, dormitory_admins.name, dormitory_admins.phone").to_sql}) AS users").ransack(params[:q])


	# SELECT "users".* FROM (
	# 	SELECT 
	# 	users.id, 
	# 	users.username, 
	# 	school_admins.name, 
	# 	school_admins.phone 
	# 	FROM "users" 
	# 	INNER JOIN "school_admins" 
	# 	ON "school_admins"."user_id" = "users"."id" 
	# 	WHERE "users"."id" = 1 
	# 	UNION 
	# 	SELECT 
	# 	users.id, 
	# 	users.username, 
	# 	dormitory_admins.name, 
	# 	dormitory_admins.phone 
	# 	FROM "users" 
	# 	INNER JOIN "dormitory_admins" 
	# 	ON "dormitory_admins"."user_id" = "users"."id" 
	# 	WHERE "users"."id" = 2) 
	# AS users;
end
