class User < ApplicationRecord
	# has_many :school_admins
	# has_many :schools, through: :school_admins
	has_one :school_admin
end
