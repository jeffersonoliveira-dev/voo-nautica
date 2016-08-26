class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :district
      t.string :city
      t.string :cep

      t.timestamps null: false
    end
  end
end
