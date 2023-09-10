class CreateHomepages < ActiveRecord::Migration[5.1]
  def change
    create_table :homepages do |t|
      t.integer :article_id

      t.timestamps
    end
  end
end
