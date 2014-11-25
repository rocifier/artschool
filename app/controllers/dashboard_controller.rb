class DashboardController < ApplicationController

  def index                    
    tab_content = Tab.find_by(name: params[:selected_tab])                                                                       
    render text: tab_content and return if params[:selected_tab] and request.xhr?
  end

end
