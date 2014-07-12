module Refinery
  module Basics
    class Basic < Refinery::Core::BaseModel
      self.table_name = 'refinery_basics'

      attr_accessible :name, :location, :content, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
