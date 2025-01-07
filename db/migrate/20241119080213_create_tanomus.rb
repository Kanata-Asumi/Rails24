class CreateTanomus < ActiveRecord::Migration[7.1]
  def change
    create_table :tanomus do |t|
      t.string :username
      t.string :userid
      t.string :time
      t.string :photo
      t.string :content
      t.string :category

      t.timestamps
    end
  end
end
