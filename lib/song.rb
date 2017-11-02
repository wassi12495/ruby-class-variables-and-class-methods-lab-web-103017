require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count={}
  @@artist_count={}

  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << @artist
    @@genres << @genre


  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count[genre].nil?
        @@genre_count[genre] = 1
      else
        @@genre_count[genre] += 1
      end
    end
    return @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count[artist].nil?
        @@artist_count[artist] = 1
      else
        @@artist_count[artist] += 1
      end
    end
    return @@artist_count
  end




  #Pry.start

end
