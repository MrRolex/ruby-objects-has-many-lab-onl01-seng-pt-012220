class Artist
  attr_accessor :name, :songs


  def initialize(name)
    @name = name
  end

  def songs
    songs.allselect do |song|
      song.artist == artist
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end