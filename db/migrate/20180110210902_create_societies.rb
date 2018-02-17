class CreateSocieties < ActiveRecord::Migration[5.1]
  def change
    create_table :societies do |t|
      t.integer :article_id

      t.timestamps
    end
  end
end
