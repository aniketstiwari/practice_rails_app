class UpdateDatatypeOfPhoneNumber < ActiveRecord::Migration[6.1]
  def change
      change_column :doctors, :phone_no, :bigint
  end
end
