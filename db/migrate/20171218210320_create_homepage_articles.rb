class CreateHomepageArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :homepage_articles do |t|
      t.text :text

      t.timestamps
    end
  end
end
