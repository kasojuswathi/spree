# Ensure that Spree.user_class includes the UserMethods concern

Spree::Core::Engine.config.to_prepare do
  if Spree.user_class && !Spree.user_class.included_modules.include?(Spree::UserMethods)
    ActiveSupport::Deprecation.warn "#{Spree.user_class} must include Spree::UserMethods"
    Spree.user_class.include Spree::UserMethods
  end
end
