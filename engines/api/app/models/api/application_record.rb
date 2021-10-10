module API
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
