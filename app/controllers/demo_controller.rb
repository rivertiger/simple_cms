class DemoController < ApplicationController
  def index
    #render(:action => 'hello')
    #redirect_to(:action => 'other_hello')
  end
  
  def hello
      #redirect_to("http://www.lynda.com")
      @array = [1,2,3,4,5]
      @id = params[:id].to_i
      @page = params[:page].to_i
  end
  
  def other_hello
    render(:text => 'other hello!')
  end
      
end
