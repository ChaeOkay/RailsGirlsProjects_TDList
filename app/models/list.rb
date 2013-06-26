class List < ActiveRecord::Base
  attr_accessible :name, :list_status

	has_many :tasks, dependent: :destroy

end
