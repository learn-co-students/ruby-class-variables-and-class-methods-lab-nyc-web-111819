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
    # returns a hash. 
    # each unique genre is a key. 
    # count of each is value
    genre_hash = {}
    Song.genres.each {|key| genre_hash[key] = @@genres.count(key)}
    return genre_hash

  end

  def self.artist_count
    # returns a hash. 
    # each unique artist is a key. 
    # count of each is value
    artist_hash = {}
    Song.artists.each {|key| artist_hash[key] = @@artists.count(key)}
    return artist_hash

  end

end