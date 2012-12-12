module Engineblock

  class Engine < Rails::Engine

    config.app_generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end

    initializer "engineblock.load_app_instance_data" do |app|
      Engineblock.setup do |config|
        config.app_root = app.root
      end
    end

    initializer "engineblock.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end

end
