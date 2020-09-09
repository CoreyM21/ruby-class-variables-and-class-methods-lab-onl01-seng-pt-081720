require 'pry' 

class Song 
  
  attr_accessor :name, :artist, :genre
  
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
     
    @name = name
    @artist = artist 
    @genre = genre
    
    @@artists << artist
    @@genres << genre 
    
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
    
  def self.genre_count
      hash = {}
      @@genres.each do |g|
      if hash[g]
       hash[g] += 1
      else
        hash[g] = 1 
      end
    end
      hash 
  end
  
  def self.artist_count
    
  end
  
end