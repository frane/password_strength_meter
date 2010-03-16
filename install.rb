p "Copying files..."

FileUtils.cp File.join(File.dirname(__FILE__), "public/stylesheets/password_strength_meter.css"), "#{RAILS_ROOT}/public/stylesheets/" unless File.exists?("#{RAILS_ROOT}/public/stylesheets/password_strength_meter.css")
p "."
FileUtils.cp File.join(File.dirname(__FILE__), "public/javascripts/password_strength_meter.js"), "#{RAILS_ROOT}/public/javascripts/" unless File.exists?("#{RAILS_ROOT}/public/javascripts/password_strength_meter.js")
p "."
FileUtils.cp File.join(File.dirname(__FILE__), "public/images/password-strength-empty.png"), "#{RAILS_ROOT}/public/images/" unless File.exists?("#{RAILS_ROOT}/public/images/password-strength-empty.png")
p "."
FileUtils.cp File.join(File.dirname(__FILE__), "public/images/password-strength-bad.png"), "#{RAILS_ROOT}/public/images/" unless File.exists?("#{RAILS_ROOT}/public/images/password-strength-bad.png")
p "."
FileUtils.cp File.join(File.dirname(__FILE__), "public/images/password-strength-weakest.png"), "#{RAILS_ROOT}/public/images/" unless File.exists?("#{RAILS_ROOT}/public/images/password-strength-weakest.png")
p "."
FileUtils.cp File.join(File.dirname(__FILE__), "public/images/password-strength-weak.png"), "#{RAILS_ROOT}/public/images/" unless File.exists?("#{RAILS_ROOT}/public/images/password-strength-weak.png")
p "."
FileUtils.cp File.join(File.dirname(__FILE__), "public/images/password-strength-medium.png"), "#{RAILS_ROOT}/public/images/" unless File.exists?("#{RAILS_ROOT}/public/images/password-strength-medium.png")
p "."
FileUtils.cp File.join(File.dirname(__FILE__), "public/images/password-strength-strong.png"), "#{RAILS_ROOT}/public/images/" unless File.exists?("#{RAILS_ROOT}/public/images/password-strength-strong.png")
p "."
FileUtils.cp File.join(File.dirname(__FILE__), "public/images/password-strength-strongest.png"), "#{RAILS_ROOT}/public/images/" unless File.exists?("#{RAILS_ROOT}/public/images/password-strength-strongest.png")

p "done!"