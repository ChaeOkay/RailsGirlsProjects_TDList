class List < ActiveRecord::Base
  attr_accessible :description, :status

  validates_presence_of :description, :status
  has_many :tasks, dependent: :destroy


end
