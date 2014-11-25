class TabsController < ApplicationController
  load_and_authorize_resource

  def index
    @tabs = Tab.all
  end
  def show
    @tab = Tab.find(params['id'])     
    render partial: 'tab'
  end
  def create
    tab = Tab.new
    tab.name = params['tab']['name']
    tab.ajax_content = params['tab']['ajax_content']
    tab.save!
    redirect_to tabs_path 
  end
  def new
    @tab = Tab.new
    @tab.id = 0
  end
  def edit
    @tab = Tab.find(params['id'])
  end 
  def update
    tab = Tab.find(params['id'])
    tab.name = params['tab']['name']
    tab.ajax_content = params['tab']['ajax_content']
    tab.save!
    redirect_to tabs_path
  end 
  def destroy
    tab = Tab.find(params['id'])
    tab.destroy
    redirect_to tabs_path
  end

private
  def tab_params
    params.permit(:tab)
  end
end
