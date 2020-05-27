class CommentsController < ApplicationController
  before_action :load_event

  def create
    data = params["comment"]
    c = Comment.new(
      author: data["author"],
      message: data["message"],
      event_id: @event.id
    )
    if c.save
      redirect_to event_path(c.event)
    else
      # TODO : error in form
      puts "error ?"
    end
  end

  def index
    # idk why but comments is broken, removed s and it worked ... 
    @comments = @event.comment.order("created_at DESC")
  end

  private

  def load_event
    # TODO : render 400 error if  params[:event_id].nil?
    @event = Event.find_by(id: params[:event_id])
  end
end
