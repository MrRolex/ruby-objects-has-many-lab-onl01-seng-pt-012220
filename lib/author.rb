jay_z = Artist.new("Jay-Z")
rap = Genre.new("rap")
ninety_nine_problems = Song.new("99 Problems", rap)
jay_z.add_song(ninety_nine_problems)
another_crappy_song = Song.new("Crappy Song", rap)
jay_z.add_song(another_crappy_song)
jay_z.songs
# ninety_nine_problems.genre
rap.songs #=> should include 99 problems

rap.songs.collect {|i| i.name}