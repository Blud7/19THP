class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|

      # t.references :recipients, index: true
      # t.references :sender, index: true
      t.belongs_to :recipients
      t.belongs_to :sender

      t.text :content
      t.timestamps :date
      t.timestamps
    end
  end
end
