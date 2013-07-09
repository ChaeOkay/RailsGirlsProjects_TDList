class List < ActiveRecord::Base
  attr_accessible :description, :status
  before_create :default_status

  validates_presence_of :description, :status
  has_many :tasks, dependent: :destroy

  private
  def default_status
    self.status ||= 'In Progress'
  end
end
