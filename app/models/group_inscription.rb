class GroupInscription < ActiveRecord::Base
  belongs_to :group
  belongs_to :inscription
end
