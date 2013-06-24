class Task < ActiveRecord::Base

  belongs_to :list

  validates :description, presence: true
  validates :task_status, presence: true
  validates :list_id, presence: true
  
end
