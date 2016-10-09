class ChangeTypeFromPhones < ActiveRecord::Migration
  def change
    change_column :phones, :type, 'integer USING CAST(type AS integer)'
  end
end
