class PeopleSim < ActiveRecord::Base
  belongs_to :people
  belongs_to :sim_carte
  scope :jointure_sim_carte, -> { select("numero ").joins(:sim_carte) }

end
