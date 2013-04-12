# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Skin::Application.initialize!

Skin::Application.configure do
  config.serve_static_assets = false
  config.assets.compress = true
  config.assets.compile = true
  config.assets.digest = true
  # Defaults to Rails.root.join("public/assets")
  # config.assets.manifest = YOUR_PATH
end
