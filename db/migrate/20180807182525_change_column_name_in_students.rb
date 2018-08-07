class ChangeColumnNameInStudents < ActiveRecord::Migration[5.2]
  def change
  	rename_column :students, :lessontime, :lesson_time
  end
end
