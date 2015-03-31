class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.references :level, index: true

      t.timestamps null: false
    end
    add_foreign_key :units, :levels
  end
end
