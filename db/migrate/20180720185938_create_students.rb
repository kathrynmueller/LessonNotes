class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.integer :phone
      t.string :email
      t.string :dob
      t.text :experience
      t.text :interests
      t.string :lessontime

      t.timestamps
    end
  end
end
