class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :sex
      t.string :email
      t.boolean :admin
      t.date :birthday

      t.timestamps null: false
    end
  end
end
