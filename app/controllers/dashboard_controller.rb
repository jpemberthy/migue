require 'open-uri'

class DashboardController < ApplicationController
  URL = "http://www.bvc.com.co/pps/tibco/portalbvc/Home/Mercados/enlinea/acciones"

  def index
    @mirror = Nokogiri::HTML(open(URL)).css("table#textTitulos")
  end

end
