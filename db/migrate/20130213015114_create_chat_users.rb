class CreateChatUsers < ActiveRecord::Migration
  def change
    create_table :chat_users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
