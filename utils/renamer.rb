require 'fileutils'

Dir[".lib/app/views/*.erb"].each do |file|
  filename = file.to_s.gsub(/\s+/, "")
  filename = filename.to_s.gsub(/\&/, "")
  filename = filename.to_s.gsub(/\,/, "")
  puts filename
  this_file = File.open(file, "r").read
  FileUtils.touch(".lib/app/views/#{filename}")
  File.open(".lib/app/views/#{filename}", "w") do |file|
    file.write(this_file)
  end
  FileUtils.rm(file)
end