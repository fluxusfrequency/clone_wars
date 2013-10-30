require 'mechanize'

url = "http://infohound.net/tidy/"
agent = Mechanize.new

Dir["./lib/app/views/*.erb"].each_with_index do |file, i|
  page = agent.get(url)
  this_file = File.open(file, "r")
  html_form = page.form_with(name:'tidy')
  html_form.field_with(id:"_html").value = this_file.read
  result = agent.submit(html_form)

  erb = result.forms.last.fields.flatten.last.value
  puts erb
  title = file.to_s.gsub(/\.\/lib\/app\/views\//, "")
  # puts title

  # FileUtils.touch("./lib/app/views/cleaned/#{title}.erb")
  # File.open("./scraped/slim/#{title}.slim", "w") do |file|
  #   file.write(slim)
  # end
end