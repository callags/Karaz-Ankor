class AddEmpireReferenceToCapital < ActiveRecord::Migration[5.1]
  def change
    add_reference :capitals, :empire, foreign_key: true
  end
end
