class Artist
attr_accessor :name

def initialize(name)
    @name = name
    @songs = []


end


def songs
    Song.all.select {|x| x.artist == self}
end

def add_song(song)
    #@songs << song
    song.artist = self

end

def add_song_by_name(song)
    s = Song.new(song)
    s.artist = self
end

def self.song_count
    Song.all.count
end

end