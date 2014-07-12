module Refinery
  module Basics
    module Admin
      class BasicsController < ::Refinery::AdminController

        crudify :'refinery/basics/basic',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
