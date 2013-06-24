class Task < ActiveRecord::Base
  validates :description, presence: true
  validates :task_status, presence: true
  validates :list_id, presence: true
end
