class PhonesController < ApplicationController

  # GET /phones
  def index
    @phones = Phone.all

    render json: @phones
  end

  # POST /phones
  def create
    # POST /phones/no
    if phone_params.exists?
      # if the requested number is already allocated
      if Phone.where(no: phone_params[:no]).exists?
        allocate
      else
        @phone = Phone.new(phone_params)
      end
    else
      allocate
    end

    if @phone.save
      render json: @phone, status: :created
    else
      render json: @phone.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def phone_params
    params.permit(:no)
  end

  # this function checks wheather a randomly generated number has already been allocated or not and allocates the number
  def allocate
    no = rand(10 ** 10).to_s
    allocate if Phone.where(no: no).exists?
    @phone = Phone.new(no: no)
  end
end
