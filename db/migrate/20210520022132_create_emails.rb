class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :title, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
