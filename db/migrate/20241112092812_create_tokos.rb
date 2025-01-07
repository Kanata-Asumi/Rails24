class CreateTokos < ActiveRecord::Migration[7.1]
  def change
    create_table :tokos do |t|
      t.string :hobby
      t.string :toko

      t.timestamps
    end
  end
end
