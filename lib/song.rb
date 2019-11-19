class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@genres = []  
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count += 1
        @@genres<<genre
        @@artists <<artist
    end 

    def self.count
        @@count
    end 

    def self.genres
        dedup_genres = []
        @@genres.each do |genre|
            if dedup_genres.include?(genre) == false
                dedup_genres << genre 
            end 
        end
        dedup_genres
    end 

    def self.artists
        dedup_artists = []
        @@artists.each do |artist|
            if dedup_artists.include?(artist) == false
                dedup_artists << artist 
            end 
        end 
        dedup_artists
    end 

    def self.genre_count
        genre_histogram = {}
        @@genres.each do |genre|
            if genre_histogram.key?(genre)
                genre_histogram[genre]+=1
            else 
                genre_histogram[genre] = 1
            end 
        end 
        genre_histogram
    end 

    def self.artist_count
        artist_histogram = {}
        @@artists.each do |artist|
            if artist_histogram.key?(artist)
                artist_histogram[artist] += 1
            else 
                artist_histogram[artist] = 1
            end 
        end 
        artist_histogram
    end 

end 