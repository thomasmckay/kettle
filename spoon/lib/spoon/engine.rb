module Spoon
  class Engine < ::Rails::Engine
    def main_menu_helper(page, menu, obj)
      if page == :main
        system_menu_idx = menu.index { |m| m[:key] == :systems }
        if system_menu_idx
          menu[system_menu_idx][:items] << { :key => :spoon_systems_jelly,
                                   :name =>_("Jelly"),
                                   :url => lambda{"spoons/1/jelly"},
                                   :if => lambda{true},
                                   :options => {:class=>"panel_link"}
                                 }
        end
      end
      menu
    end

    def system_menu_helper(page, menu, system)
      if page == :systems_navigation
        menu << { :key => :spoon_systems_jelly,
                  :name =>_("System Jelly"),
                  :url => lambda{"spoons/#{obj.id}/jelly"},
                  :if => lambda{true},
                  :options => {:class=>"panel_link"}
                }
      end
      menu
    end

    initializer :finisher_hook do |engine|
      helpers = ::ApplicationController.menu_helpers
      helpers ||= []

      helpers << self.method(:main_menu_helper)
      helpers << self.method(:system_menu_helper)

      ::ApplicationController.menu_helpers = helpers
    end
  end
end
