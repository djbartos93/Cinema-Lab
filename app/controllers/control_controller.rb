class ControlController < ApplicationController

  before_action :set_control, only: [:edit, :update, :show]
  def index
  @settings = Control.all
  @setting = Control.new
  end
  def create
    @setting = Control.new(control_params)

    respond_to do |format|
      if @control.save
        format.html { redirect_to @control, notice: 'Setting was successfully created.' }
        format.json { render :show, status: :created, location: @control }
      else
        format.html { render :new }
        format.json { render json: @control.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @controls = Control.new
  end


  def update
    @controls.update_attributes(control_params)
    redirect_to :action => 'index'
  end

  private

  def control_params
    params.require(:control).permit(:value, :key)
  end

     def set_controls
       @controls = Control.find params[:id]
     end

end
