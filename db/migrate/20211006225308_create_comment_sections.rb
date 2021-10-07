class CreateCommentSections < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_sections do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
