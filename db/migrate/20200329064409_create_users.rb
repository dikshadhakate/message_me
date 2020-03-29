class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string :username
    	t.string :password_digest
    	t.string :first_name, null: true
    	t.string :last_name, null: true
    	t.string :email, null: true
    	t.timestamps
    end

    create_table :messages do |t|
    	t.text :body
    	t.integer :user_id
    	t.timestamps
    end
  end
end
