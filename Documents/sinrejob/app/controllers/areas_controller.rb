class AreasController < ApplicationController
  def index
    @area = Area.find(params[:id])
  end
end
