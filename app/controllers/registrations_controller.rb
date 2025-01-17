class RegistrationsController < ApplicationController
  before_action :require_signin
  before_action :set_event
  def index
    @registrations = @event.registrations
  end

  def new
    @registration = @event.registrations.new
  end

  def create
    @registration = @event.registrations.new(registration_params)
    @registration.user = current_user
    if @registration.save
      redirect_to event_registrations_url(@event), notice: "Thanks for registering!"
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def set_event
    @event = Event.find_by!(slug: params[:id])
  end

  def registration_params
    params.require(:registration).permit(:how_heard)
  end
end
