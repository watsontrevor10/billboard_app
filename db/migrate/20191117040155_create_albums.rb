class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :album_name
      t.string :cover
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
