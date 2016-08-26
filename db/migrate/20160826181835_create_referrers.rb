class CreateReferrers < ActiveRecord::Migration
  def change
    create_table :referrers do |t|
      t.integer :type

      t.timestamps null: false
    end
  end
end
