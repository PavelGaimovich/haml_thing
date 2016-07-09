# compiling haml-templates to app
require "haml"

haml_folder = 'haml-templates/'
app_folder = 'app/'

arr = Dir["#{haml_folder}*.html.haml"]
arr.each do |haml_file_dir|
  puts "compiling #{haml_file_dir}"
  file_name = haml_file_dir.gsub(haml_folder,'').gsub(/.haml/,'')
  p file_name
  File.write( app_folder + file_name, Haml::Engine.new( File.read( haml_file_dir ) ).render )
end
