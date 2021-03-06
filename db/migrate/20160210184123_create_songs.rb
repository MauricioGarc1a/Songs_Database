class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.text :plot
      t.string :picture
      t.date :realease_date
      t.integer :duration
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
