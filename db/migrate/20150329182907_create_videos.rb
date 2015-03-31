class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :link
      t.references :lesson, index: true

      t.timestamps null: false
    end
    add_foreign_key :videos, :lessons
  end
end
