class CreateAbouts < ActiveRecord::Migration[5.1]
  def change
    create_table :abouts do |t|
      t.integer :article_id

      t.timestamps
    end
  end
end
