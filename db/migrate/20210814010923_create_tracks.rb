class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :string
      t.string :album
      t.string :string
      t.string :release_year
      t.string :number

      t.timestamps
    end
  end
end
