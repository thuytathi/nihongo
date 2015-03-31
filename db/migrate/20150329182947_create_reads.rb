class CreateReads < ActiveRecord::Migration
  def change
    create_table :reads do |t|
      t.string :content
      t.string :answer
      t.references :lesson, index: true

      t.timestamps null: false
    end
    add_foreign_key :reads, :lessons
  end
end
