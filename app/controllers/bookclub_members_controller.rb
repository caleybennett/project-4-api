class BookclubMembersController < ApplicationController
  before_action :set_bookclub_member, only: [:show, :update, :destroy]

  # GET /bookclub_members
  def index
    @bookclub_members = BookclubMember.all

    render json: @bookclub_members
  end

  # GET /bookclub_members/1
  def show
    render json: @bookclub_member
  end

  # POST /bookclub_members
  def create
    @bookclub_member = BookclubMember.new(bookclub_member_params)

    if @bookclub_member.save
      render json: @bookclub_member, status: :created, location: @bookclub_member
    else
      render json: @bookclub_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookclub_members/1
  def update
    if @bookclub_member.update(bookclub_member_params)
      render json: @bookclub_member
    else
      render json: @bookclub_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookclub_members/1
  def destroy
    @bookclub_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookclub_member
      @bookclub_member = BookclubMember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bookclub_member_params
      params.require(:bookclub_member).permit(:user_id, :bookclub_id)
    end
end
