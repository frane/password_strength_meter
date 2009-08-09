require 'password_strength_meter'

ActionView::Base.class_eval do
  include PasswordStrengthMeterHelper
end

ActionView::Helpers::AssetTagHelper.register_javascript_include_default 'password_strength_meter'
# ActionView::Helpers::AssetTagHelper.register_stylesheet_include_default 'password_strength_meter' -- really wish Rails would have this method