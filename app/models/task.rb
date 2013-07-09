class Task < ActiveRecord::Base
  attr_accessible :description, :status, :list_id
  before_create :default_status

  validates_presence_of :description, :status, :list_id
  belongs_to :list

  private
  def default_status
    self.status ||= 'In Progress'
  end
end
