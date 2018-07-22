class AddIdToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :studentid, :integer
  end
end
