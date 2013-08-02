class Element < ActiveRecord::Base

  default_scope order('id ASC')

  self.primary_key = :id

end
