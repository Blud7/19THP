class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|

      t.belongs_to :user
      t.string :title
      t.text :content
      # t.timestamps :date --> si on laisse cette ligne, cela ne fonctionne pas ! (wrong number of arguments : given 1, expected 0)
      t.timestamps
    end
  end
end
