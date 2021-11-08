require 'open-uri'
require 'json'

class FlatsController < ApplicationController
  before_action :set_flats
  
  def index
  end

  def show
    raise
    @flat = @flats.select { |flat| flat['id'] == params[:id].to_i}[0]
  end

  private

  def set_flats
    url='https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    @flats=JSON.parse(open(url).read)
  end
end
