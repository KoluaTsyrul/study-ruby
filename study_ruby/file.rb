def create_folder
  Dir.mkdir 'file' unless Dir.exist? 'file'
  Dir.chdir 'file'
end

def create_file
  File.open("input.txt", "w+") { |f| f.write "#{Time.now} - User logged in\n" }
end

def remove_dir
  File.delete('/Users/mtsyr/Documents/cucumber-ruby/study_ruby/file/input.txt')
  Dir.delete('/Users/mtsyr/Documents/cucumber-ruby/study_ruby/file')
end

create_folder
create_file
# remove_dir

