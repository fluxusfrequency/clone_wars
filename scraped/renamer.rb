require 'fileutils'

Dir["./*.html"].each do |file|
  filename = file.to_s.gsub(/\s+/, "")
  filename = filename.to_s.gsub(/\&/, "")
  filename = filename.to_s.gsub(/\,/, "")
  filename = filename.to_s.gsub(/\.html/, ".erb")
  puts filename
  this_file = File.open(file, "r").read
  FileUtils.touch("./#{filename}")
  File.open("./#{filename}", "w") do |file|
    file.write(this_file)
  end
  # FileUtils.rm(file)
end