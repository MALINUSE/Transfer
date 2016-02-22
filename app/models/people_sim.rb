class PeopleSim < ActiveRecord::Base
  belongs_to :people
  belongs_to :sim_carte
end
