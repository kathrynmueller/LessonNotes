class AddNextToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :next_lesson, :datetime
  end
end
