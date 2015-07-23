class DesignStepsController < ApplicationController
  include Wicked::Wizard

  steps :more_about_design, :inspiration

  before_action :find_design, only: [:show, :update]
  
  def show
    render_wizard
  end

  def update 
    if @design.update(design_params)
    end
    
    render_wizard @design
  end

  private

  def design_params
    params.require(:design).permit(:title, :category, :description, :design_image)
  end

  def find_design
    @design = Design.find(session[:design_id])
  end
end
