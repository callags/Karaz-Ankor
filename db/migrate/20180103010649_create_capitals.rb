class CreateCapitals < ActiveRecord::Migration[5.1]
  def change
    create_table :capitals do |t|
      t.integer :articles_id

      t.timestamps
    end
  end
end
