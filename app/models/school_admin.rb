class SchoolAdmin < ApplicationRecord
  belongs_to :school#, foreign_key: :school_id, class_name: 'School'
  belongs_to :user#, foreign_key: :user_id, class_name: 'User'
end
