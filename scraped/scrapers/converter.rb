require 'mechanize'

url = "http://html2slim.herokuapp.com"
agent = Mechanize.new

Dir["./scraped/*.html"].each_with_index do |file, i|
  page = agent.get(url)
  this_file = File.open(file, "r")
  html_form = page.form_with(id:'main_form')
  html_form.field_with(name:"main_form[html]").value = this_file.read
  result = agent.submit(html_form)

  slim = result.forms.last.fields.flatten.last.value
  # puts slim
  title = file.to_s.gsub(/[\.\/][scraped\/]+\W+/, "")
  puts title

  FileUtils.touch("./scraped/slim/#{title}.slim")
  File.open("./scraped/slim/#{title}.slim", "w") do |file|
    file.write(slim)
  end
end