class PagesController < ApplicationController
  def home
    @chat = Chat.new
  end
end
