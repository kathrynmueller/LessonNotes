class RemoveNextLessonFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :nextlesson, :string
  end
end
