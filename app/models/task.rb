class Task < ActiveRecord::Base
  attr_accessible :description, :task_status, :list_id

  belongs_to :list

  validates :description, presence: true
  validates :task_status, presence: true
  validates :list_id, presence: true
  
end
