class CreateHobbies < ActiveRecord::Migration[7.1]
  def change
    create_table :hobby do |t|
      t.string :hobbynumber
      t.string :hobbyname

      t.timestamps
    end
  end
end
