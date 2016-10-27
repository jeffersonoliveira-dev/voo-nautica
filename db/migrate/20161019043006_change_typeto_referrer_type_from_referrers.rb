class ChangeTypetoReferrerTypeFromReferrers < ActiveRecord::Migration
  def change
    rename_column :referrers, :type, :referrer_type
  end
end
