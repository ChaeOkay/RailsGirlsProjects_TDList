class Task < ActiveRecord::Base
  attr_accessible :description, :status, :list_id
  validates_presence_of :description, :status, :list_id
  belongs_to :list
end
