require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1 
        @@genres << genre
        @@artists << artist
    end

    def self.count 
        @@count
    end

    def self.artists
        unique_artists = @@artists.uniq 
        unique_artists
    end

    def self.genres 
        unique_genres = @@genres.uniq 
        unique_genres
    end

    def self.genre_count
        g_count = {} 
        Song.genres.each {|key| g_count[key] = @@genres.count(key)}
        return g_count 
    end

    def self.artist_count
        a_count = {}
        Song.artists.each {|key| a_count[key] = @@artists.count(key)}
        return a_count
    end 


end