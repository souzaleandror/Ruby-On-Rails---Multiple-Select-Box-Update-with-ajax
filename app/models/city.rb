class City < ActiveRecord::Base
  belongs_to :state

	scope :active,->{where(:active => true)}
	scope :ordered_name, -> { order(name: :asc) }
end
