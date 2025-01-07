class CreateSamurais < ActiveRecord::Migration[7.1]
  def change
    create_table :samurais do |t|
      t.string :name
      t.boolean :checkbox
      t.text :ingredients

      t.timestamps
    end
  end
end
