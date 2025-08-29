class PagesController < ApplicationController
  def home
    @chat = Chat.new
  end

  def profile
  end

  def stats
  end

end
