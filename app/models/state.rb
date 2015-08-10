class State < ActiveRecord::Base
  has_many :cities

  scope :active,->{where(:active => true)}
  scope :ordered_name, -> { order(name: :asc) }
end
