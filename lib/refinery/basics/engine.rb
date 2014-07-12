module Refinery
  module Basics
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Basics

      engine_name :refinery_basics

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "basics"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.basics_admin_basics_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/basics/basic',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Basics)
      end
    end
  end
end
