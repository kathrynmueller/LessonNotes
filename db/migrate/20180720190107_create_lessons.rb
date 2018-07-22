class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :status
      t.float :grade
      t.text :teachernote
      t.text :studentnote
      t.text :reminder
      t.string :nextlesson

      t.timestamps
    end
  end
end
