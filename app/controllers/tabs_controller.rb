class TabsController < ApplicationController
  def index
    @tabs = Tabs.all
  end
  def show
    @tab = Tabs.find_by name: params['name']
  end
  def create
    tab = Tabs.new
    tab.name = params['tabs']['name']
    tab.ajax_content = params['tabs']['ajax_content']
    tab.save! 
  end
  def new
  end
  def edit
  end 
  def update
  end 
  def destroy
    tab = Tabs.find_by(:name => params['tabs']['name'])
    tab.destroy if tab
  end
end
