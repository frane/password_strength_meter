module PasswordStrengthMeterHelper
  
  def password_strength_meter(name, target, options = {})
    password_strength_bar = "<div id=\"#{name}_bar_container\" class=\"bar_container\" " + (options[:bar_width] ? "style=\"width: #{options[:bar_width]}\"" : "") + "><div id=\"#{name}_bar\" class=\"bar pws_empty\">&nbsp;</div></div>"
    password_strength_text = "<div id=\"#{name}_bar_text\" class=\"text\"></div>"
    script = "$('#{target}').observe('keyup', function(event){check_password_strength('#{target}', '#{name}')}); $('#{name}_bar_text').innerHTML = strength_words[0];"
    "<div id=\"#{name}\" class=\"password_strength_meter\">#{password_strength_bar}#{password_strength_text}<script type=\"text/javascript\">\n//<![CDATA[\n#{script}\n//]]>\n</script></div>"
  end
  
end
