class RemoveDobFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :dob, :string
  end
end
