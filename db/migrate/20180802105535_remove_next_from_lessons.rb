class RemoveNextFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :next_lesson, :datetime
  end
end
