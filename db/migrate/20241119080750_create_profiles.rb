class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      # 更新する前に，元データを削除
      # t.remove :name, :department, :grade
      t.string :name, null: false
      t.integer :department, null: false
      t.integer :grade, null: false

      t.timestamps
    end
  end
end
