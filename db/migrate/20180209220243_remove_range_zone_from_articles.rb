class RemoveRangeZoneFromArticles < ActiveRecord::Migration[5.1]
  def change
	remove_column :articles, :range_zone
  end
end
