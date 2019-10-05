class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :org_id
      t.string :email
      t.string :password
    end
  end
end
