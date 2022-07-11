class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :user_name
      t.string :user_email
      t.string :user_password
      t.string :user_img
      t.integer :user_ph

      t.timestamps
    end
  end
end
