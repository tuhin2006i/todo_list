class Todo < ActiveRecord::Base
  belongs_to :user

  validates :title,
            :presence => true
  validates :deadline,
            :presence => true

  STATUS_PENDING = 'pending'
  STATUS_COMPLETE = 'completed'
  STATUS_OVERDUE = 'overdue'

  scope :sorted, lambda{|user_id| where(user_id: user_id).order("deadline ASC") }
  scope :pending, lambda{|user_id| where(status: 'pending', user_id: user_id).order("deadline ASC") }
  scope :completed, lambda{|user_id| where(status: 'completed', user_id: user_id).order("deadline ASC") }
  scope :overdue, lambda{|user_id| where(status: 'overdue', user_id: user_id).order("deadline ASC") }

  before_save :set_completion_date

  private
  def set_completion_date
    if(self.status == STATUS_PENDING)
      self.completion_date = nil
    end
  end
end
