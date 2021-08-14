class Artist < ApplicationRecord
    GENRE_OPTIONS = %w[
        axé pagode samba sertanejo forró pop
        rock metal funk reggae erudito rap mpb
        arrocha instrumental
    ]

    validates :name, presence: true
    validates :genre, presence: true, inclusion: {
        in: GENRE_OPTIONS,
        message: '%{value} is not a valid genre'
    }

    def self.build_artist(name:, genre:)
        Artist.new(name: name, genre: genre)
    end
end
