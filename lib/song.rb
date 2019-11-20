require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    attr_reader
    attr_writer

    @@genre = {}
    @@artists = []
    @@count = 0
    @@genres = []
    @@name = []
    @@artist = {}

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@name << name
    end

    def self.genre_count
        @@genres.each do |genre|
            !@@genre[genre] ? @@genre[genre] = 1 : @@genre[genre] += 1 
        end
        @@genre
    end

    def self.artist_count
        @@artists.each do |artist|
            !@@artist[artist] ? @@artist[artist] = 1 : @@artist[artist] += 1 
        end
        @@artist
    end

    def self.count
        @@count
    end

    def self.artists 
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq 
    end
end