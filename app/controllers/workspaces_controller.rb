class WorkspacesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @workspaces = Workspace.all
  end

  def show
    @workspace = Workspace.find(params[:id])
  end

  def new
    @workspace = Workspace.new
  end

  def create
    @workspace = Workspace.new(params_workspace)
    authorize @workspace
    # categroy and workspace (belongs to) not identified
  end

  def edit
    @workspace = Workspace.find(params[:id])
  end

  def update
    @workspace = Workspace.find(params[:id])
    authorize @workspace
    @workspace.update(params_workspace)
    # categroy and workspace (belongs to) not identified
  end

  def destroy
    @workspace = Workspace.find(params[:id])
    @workspace.destroy
  end

  private

  def params_workspace
    params.require(:workspace).permit(:name, :address, :phone_number, :average_rating, :average_wifi_rating, :average_noise_level, :category_id, :closed, :air_purifier, :open_time, :close_time, :power_source, :smoking_free, :featured_picture, :workspace_owner_id)
  end
end
