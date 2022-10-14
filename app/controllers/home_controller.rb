class HomeController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index

  end

  def new

  end
end