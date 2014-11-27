class TabsController < ApplicationController
  load_and_authorize_resource

  def index
    @tabs = @tabs.order('position')
  end
  def show
    render partial: 'tab'
  end
  def new
  end
  def edit
  end
  def create
    @tab.update_attributes(tab_params)
    redirect_to tabs_path
  end 
  def update
    @tab.update_attributes(tab_params)
    redirect_to tabs_path
  end 
  def destroy
    @tab.destroy
    redirect_to tabs_path
  end

private
  def tab_params
    params.require(:tab).permit(:name, :ajax_content, :position)
  end

end
