class EventPresenter < SimpleDelegator
  def format_start_time
    I18n.localize(start_time, format: :long)
  end

  def format_end_time
    I18n.localize(end_time, format: :long) if end_time.present?
  end

  def get_visitors_list
    Visitor.find(EventVisitor.where(event_id: self.id, visitor_bssid: current_user_mac).map(&:visitor_id))
  end

  def current_user_mac
    self.user_mac
  end
end
