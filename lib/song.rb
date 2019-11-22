class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        #iterate over @@genres array
        #check to see if the hash already contains that key.
        #if yes - increment the value
        # if not - create a new pair
        #returns a hash
        #hask_key - name of each genre; hash_value - num of songs of that genre
        genre_count_hash = {}
        @@genres.each {|genre|
        if genre_count_hash[genre] 
            genre_count_hash[genre] += 1 
        else 
            genre_count_hash[genre] = 1
        end
        }
    genre_count_hash
    end

    def self.artist_count
        artist_count_hash = {}
        @@artists.each {|artist|
        if artist_count_hash[artist] 
            artist_count_hash[artist] += 1
        else
            artist_count_hash[artist] = 1
        end
        
        }
        artist_count_hash
    end

end
