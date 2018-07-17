module Plugins
  module LoomioLegal
    class Plugin < Plugins::Base
      setup! :loomio_legal_plugin do |plugin|
        plugin.enabled = true
        plugin.use_view_path :"app/views"
        plugin.use_class_directory 'app/controllers'

        %w[privacy terms_of_service third_parties gdpr].each do |page|
          plugin.use_page page, "legal##{page}"
        end
      end
    end
  end
end
