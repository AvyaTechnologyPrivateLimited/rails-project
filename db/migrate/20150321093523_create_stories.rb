class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :heading
      t.text :body_text
      t.date :date_of_submission
      t.string :source
      t.integer :genre_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
