class Person < ActiveRecord::Base
  include AvatarConcern
  has_many :people_sims
  has_many :operations
end
