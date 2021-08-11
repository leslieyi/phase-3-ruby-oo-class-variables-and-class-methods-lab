class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

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
    @@genres.tally
    # hash = {}
    # @@genres.each do |genre|
    #   hash[genre] ||= 0 # if it is nil, assign 0,  a = b unless a 
    #   hash[genre] += 1
    # end
    # hash
  end

  def self.artist_count
    @@artists.tally
  end
#     hash = {}
#     @@artists.each do |artist|
#       hash[artist] ||= 0 # if it is nil, assign 0,  a = b unless a 
#       hash[artist] += 1
#     end
#     hash
#   end
end
