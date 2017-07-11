class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|

      t.integer :building
      t.integer :class_num
      t.string :email_id
      t.string :phone
      t.string :num_of_people
      t.date :date_of_rent
      t.time :time_of_rent

      t.timestamps
    end
  end
end
