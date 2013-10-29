require 'fileutils'

Dir["./*.html.slim"].each do |file|
  filename = file.to_s.gsub(/(\.\/)*(\.html)*/, "")
  puts filename
  this_file = File.open(file, "r").read
  FileUtils.touch("./#{filename}")
  File.open("./#{filename}", "w") do |file|
    file.write(this_file)
  end
end