class Element < ActiveRecord::Base

  // Sort the records on atomic number
  default_scope order('atomic_number ASC')

  // Designate a primary key
  self.primary_key = :id

end
