class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.date :birth_date
      t.string :country_of_origin

      t.timestamps
    end
  end
end
