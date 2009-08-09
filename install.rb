p "Copying files..."

FileUtils.cp File.join(File.dirname(__FILE__), "public/stylesheets/password_strength_meter.css"), "#{RAILS_ROOT}/public/stylesheets/" unless File.exists?("#{RAILS_ROOT}/public/stylesheets/password_strength_meter.css")
p "."
FileUtils.cp File.join(File.dirname(__FILE__), "public/javascripts/password_strength_meter.js"), "#{RAILS_ROOT}/public/javascripts/" unless File.exists?("#{RAILS_ROOT}/public/javascripts/password_strength_meter.js")
p "."

p "done!"