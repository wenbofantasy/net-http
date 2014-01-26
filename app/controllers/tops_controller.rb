class TopsController < ApplicationController
  def index
    render :text => params['q'] + "Hello"
  end
end
