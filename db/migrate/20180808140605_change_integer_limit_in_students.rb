class ChangeIntegerLimitInStudents < ActiveRecord::Migration[5.2]
  def change
  	change_column :students, :phone, :integer, limit: 10
  end
end
