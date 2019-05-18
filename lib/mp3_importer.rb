class MP3Importer 
  attr_accessor :path, :files  
  
  def initialize(path)
    @path = path 
   
    
  end 
  
  def files 
   array = Dir.glob("#{path}/*.mp3").collect{|file| file.split(path+"/")[1]}
  end 
  
  def import
    Song.new_by_filename(file_name)
   

  end 
  
  
end 