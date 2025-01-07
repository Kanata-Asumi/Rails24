class CreateHobbySelectings < ActiveRecord::Migration[7.1]
  def change
    create_table :hobby_selectings do |t|
      t.string :poster
      t.string :hobby_id

      t.timestamps
    end
  end
end
