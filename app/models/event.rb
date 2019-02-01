class Event < ApplicationRecord
  before_create :set_end_time

  validates :start_time, presence: true

  has_many :event_visitors
  has_many :visitors, through: :event_visitors
  belongs_to :user, optional: true

  START_SOON = 15.freeze
  DEFAULT_EVENT_DURATION = 1.5.hours.freeze

  def actual?
    true if self.end_time > Time.current && ((self.end_time - Time.current) < START_SOON.minutes)
  end

  def set_end_time
    self.end_time = self.start_time + DEFAULT_EVENT_DURATION
  end
end
