class AddNameToReferrers < ActiveRecord::Migration
  def change
    add_column :referrers, :name, :string
  end
end
