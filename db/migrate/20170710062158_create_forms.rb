class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|

      t.integer :building
      t.integer :class_num
      t.string :email_id
      t.string :phone
      t.string :num_of_people
      t.datetime :date_of_start
      t.datetime :date_of_end

      t.timestamps
    end
  end
end
