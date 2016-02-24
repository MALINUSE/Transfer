class SimCarte < ActiveRecord::Base
  default_scope { select(:numero, :status, :date_active) }

  has_many :people_sims
end
