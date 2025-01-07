class CreateBlongs < ActiveRecord::Migration[7.1]
  def change
    create_table :blongs do |t|
      t.integer :number
      t.string :gakubugakka

      t.timestamps
    end
  end
end
