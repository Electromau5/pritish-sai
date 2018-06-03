class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :description
      t.integer :number
      t.string :site

      t.timestamps null: false
    end
  end
end
