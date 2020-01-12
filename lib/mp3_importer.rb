class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        files ||= Dir["#{@path}/*"].collect {|song| song.gsub("#{@path}/", "")}
    end

    def import
       files.each {|song| Song.new_by_filename(song)}
    end

end



# class MP3Importer
#   attr_accessor :path

#   def initialize(path)
#     @path = path
#   end

#   def files
#     files = []
#     Dir.new(self.path).each do |file|
#       files << file if file.length > 4
#     end
#     files
#   end

#   def import
#     self.files.each do |filename|
#       Song.new_by_filename(filename)
#     end
#   end
# end


# class MP3Importer
#   attr_accessor :path

#   def initialize(path)
#     @path = path
#   end

#   def files
#     files = []
#     Dir.new(self.path).each do |file|
#       files << file if file.length > 4
#     end
#     files
#   end

#   def import
#     self.files.each do |filename|
#       Song.new_by_filename(filename)
#     end
#   end
# end

# class MP3Importer
#   attr_reader :path, :files

#   def initialize(path)
#     @path = path
#     @files = Dir.entries(path).grep(/.*\.mp3/)
#   end

#   def import
#     @files.each {|file| Song.new_by_filename(file)}
#   end
# end