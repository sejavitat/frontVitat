# frozen_string_literal: true

require 'autoprefixer-rails'
require 'sassc-rails'

module FrontVitat
  module Rails
    class Engine < ::Rails::Engine
      initializer 'front_vitat.assets' do |app|
        %w(stylesheets javascripts).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
