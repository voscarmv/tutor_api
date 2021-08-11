class SubjectsController < ApplicationController
  before_action :authenticate_user
  # before_action :set_subject, only: [:show, :update, :destroy]

  # GET /subjects
  def index
    @subjects = Subject.all

    render json: @subjects
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subject_params
      params.require(:subject).permit(:name, :tutor, :description, :tutorpic)
    end
end
