class AddDateToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :lesson_date, :datetime
  end
end
