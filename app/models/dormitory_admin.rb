class DormitoryAdmin < ApplicationRecord
  belongs_to :dormitory
  belongs_to :user
end
