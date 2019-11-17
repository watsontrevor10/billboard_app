class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :total_listens
      t.string :lyrics
      t.belongs_to :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
