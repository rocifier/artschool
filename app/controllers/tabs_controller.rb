class TabsController < ApplicationController
  def index
    @tabs = Tabs.all
  end
  def show
    @tab = Tabs.find(params['id'])     
    render partial: 'tab'
  end
  def create
    tab = Tabs.new
    tab.name = params['tabs']['name']
    tab.ajax_content = params['tabs']['ajax_content']
    tab.save!
    redirect_to tabs_path 
  end
  def new
  end
  def edit
    @tab = Tabs.find(params['id'])
  end 
  def update
    tab = Tabs.find(params['id'])
    tab.name = params['tabs']['name']
    tab.ajax_content = params['tabs']['ajax_content']
    tab.save!
    redirect_to tabs_path
  end 
  def destroy
    tab = Tabs.find(params['id'])
    tab.destroy if tab
  end
end
