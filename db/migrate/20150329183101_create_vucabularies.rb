class CreateVucabularies < ActiveRecord::Migration
  def change
    create_table :vucabularies do |t|
      t.string :jp
      t.string :hiragana
      t.string :vi
      t.references :lesson, index: true

      t.timestamps null: false
    end
    add_foreign_key :vucabularies, :lessons
  end
end
