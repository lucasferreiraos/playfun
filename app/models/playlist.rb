class Playlist < ApplicationRecord
    validates :name, presence: true
    has_many :track

    def self.build_playlist(name: tracks:)
        Playlist.new(name: name, tracks: tracks)
    end
end