class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create

  def create
    return render_not_found if gram.blank?
    @comment = gram.comments.create(comment_params.merge(user: current_user))

    if @comment.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end

  helper_method :gram
  def gram
    @gram ||= Gram.find_by_id(params[:gram_id])
  end

end
