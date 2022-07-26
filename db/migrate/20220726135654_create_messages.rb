class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :Conversation

      t.timestamps
    end
  end
end
