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
    song.artist = self
  end

  def add_song_by_name(song_name)
    singer = Song.new(song_name)
    add_song(singer)
   end

  def self.song_count
    @@song_count
  end

end