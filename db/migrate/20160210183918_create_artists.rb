class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.date :birth_date
      t.string :country
      t.string :picture
      t.text :plot

      t.timestamps null: false
    end
  end
end
