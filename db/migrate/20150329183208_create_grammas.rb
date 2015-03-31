class CreateGrammas < ActiveRecord::Migration
  def change
    create_table :grammas do |t|
      t.string :name
      t.string :description
      t.string :example
      t.references :lesson, index: true

      t.timestamps null: false
    end
    add_foreign_key :grammas, :lessons
  end
end
