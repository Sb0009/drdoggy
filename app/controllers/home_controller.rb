class HomeController < ApplicationController

  skip_before_action :authorized, only: [:index], :raise => false

  def index

  end

  def new

  end
end