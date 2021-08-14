class Track < ApplicationRecord
    validates :title, presence: true
    validates :artist, presence: true,
    validates :album, presence: true,
    validates :release_year, presence: true

    belongs_to :artist

    def self.build_track(title:, artist:, album:, release_year:)
        Track.new(title: title, artist: artist, album: album, release_year:release_year)
    end
end
