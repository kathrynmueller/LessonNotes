class ChangeDobToDatetimeInStudents < ActiveRecord::Migration[5.2]
  def up
    change_column :students, :dob, :datetime
  end

  def down
    change_column :students, :dob, :string
  end
end
