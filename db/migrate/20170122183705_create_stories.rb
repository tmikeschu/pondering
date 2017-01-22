class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :body
      t.string :image

      t.timestamps
    end
  end
end
