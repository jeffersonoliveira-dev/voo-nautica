class ChangeTypetoPhoneTypeFromPhones < ActiveRecord::Migration
  def change
    rename_column :phones, :type, :phone_type
  end
end
