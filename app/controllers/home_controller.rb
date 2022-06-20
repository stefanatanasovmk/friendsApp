require "uri"
require "net/http"
class HomeController < ApplicationController
  def index
  end
  
  def about
        uri = URI("https://icanhazdadjoke.com/")
        request= Net::HTTP::Get.new(uri, 'Content-Type' => 'application/json')
        p request
        @about_me=request
  end

end
