class EventsController < ApplicationController


  def index
    @events = Event.all
    respond_to do |format| 
      format.html do
        render "event/index" 
      end
    end
  end

  def show
    @event = Event.find_by(id: params[:id])
    @comment = Comment.new
    # error if event.blank? ou nil?
    respond_to do |format| 
      format.html do
        render "event/show" 
      end
    end
  end

  def create
    @new_event = Event.create(event_params)
    if @new_event.present?
      redirect_to event_path(@new_event)
    else 
      render "new"
    end
  end

  def new
    @event = Event.new
    respond_to do |format| 
      format.html do
        render "event/new" 
      end
    end
  end

  private 

  def event_params
    params.require(:event).permit(
      :name,
      :description,
      :event_date,
      :org_email
    )
  end
end
