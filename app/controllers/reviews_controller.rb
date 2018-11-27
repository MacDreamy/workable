class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(workspace_id: params[:workspace_id]).order(created_at: :desc)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @workspace = Workspace.find(params[:workspace_id])
    @review = Review.new
  end

  def create
    @workspace = Workspace.find(params[:workspace_id])
    @review = Review.new(params_review)
    @review.workspace = @workspace
    @review.save
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(params_review)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def params_review
    params.require(:review).permit(:workspace_id, :comment, :rating, :wifi_rating, :noise_level)
  end
end
