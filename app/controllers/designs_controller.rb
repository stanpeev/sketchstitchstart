class DesignsController < ApplicationController
  before_action :find_design, only: [:show, :edit, :destroy, :update, :destroy]

  def index
    @designs = Design.all.order("created_at DESC")
  end

  def show
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.new(design_params)

    if @design.save
      redirect_to @design
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @design.update(design_params)
      redirect_to @design
    else
      render 'edit'
    end
  end

  def destroy
    @design.destroy
    redirect_to root_path
  end

  private

  def design_params
    params.require(:design).permit(:title, :description, :style)
  end

  def find_design
    @design = Design.find(params[:id])
  end
end
