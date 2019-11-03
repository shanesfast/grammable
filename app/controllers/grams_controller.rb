class GramsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def new
    @gram = Gram.new
  end

  def create
    Gram.create(gram_params)
    redirect_to root_path
  end

  private

  def gram_params
    params.require(:gram).permit(:message)
  end
end
