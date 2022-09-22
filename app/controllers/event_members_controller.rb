class EventMembersController < ApplicationController
  before_action :set_event_member, only: %i[ show update destroy ]

  # GET /event_members
  def index
    @event_members = EventMember.all

    render json: @event_members
  end

  # GET /event_members/1
  def show
    render json: @event_member
  end

  # POST /event_members
  def create
    @event_member = EventMember.new(event_member_params)

    if @event_member.save
      render json: @event_member, status: :created, location: @event_member
    else
      render json: @event_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_members/1
  def update
    if @event_member.update(event_member_params)
      render json: @event_member
    else
      render json: @event_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_members/1
  def destroy
    @event_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_member
      @event_member = EventMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_member_params
      params.require(:event_member).permit(:event_id, :member_id, :presented)
    end
end
