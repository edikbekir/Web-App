class EventsController < ApplicationController
  respond_to :html, :js
  def index
    @events = User.joins(:events).find(current_user.id).events.where("end_time > ?", Time.current).map { |event| EventPresenter.new event }
    @countdown = @events.find(params[:id]).first.format_end_time
  end

  def show
    @events = User.joins(:events).find(current_user.id).events
    @event = EventPresenter.new(@events.find(params[:id]))
  end

  def update
    router_data = RouterInformer.new.get_mac
    @events = User.joins(:events).find(current_user.id).events.map { |event| EventPresenter.new event }
    @event = @events.find(params[:id]).first.update(user_mac: router_data, begin: true)
    render :show
  end

  def past_events
    @events = Event.where("end_time < ?", Time.current).map { |e| EventPresenter.new(e) }
  end

  def write_bssid
    debugger
  end

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end
end
