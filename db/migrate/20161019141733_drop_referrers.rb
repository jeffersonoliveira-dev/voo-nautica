class DropReferrers < ActiveRecord::Migration
  def change
    drop_table :referrers
  end
end
