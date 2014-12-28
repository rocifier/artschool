class ForumsController < ApplicationController
  def index
  end

  def category
    @category = Jsonforem::Category.find(params[:id])
  end

  def forum
    @forum = Jsonforem::Forum.find(params[:id])
  end

  def topic
    @topic = Jsonforem::Topic.find(params[:id])
    @post = Jsonforem::Post.new(topic: @topic, user_id: current_user.id)
  end

  def post
    @post = Jsonforem::Post.find(params[:id])
  end

end
