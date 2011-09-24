class SubjectsController < ApplicationController
  # to handle the url when someone goes to index  
    def index
      list
      render('list')
    end
  
  def list
    @subjects = Subject.order("subjects.position ASC")
  end

# method to show and pass a parameter
  def show
   @subject = Subject.find(params[:id])
  end
  
# method for new form subject
  def new
    @subject = Subject.new
  end
  
# method for new form > creates
  def create
    @subject=Subject.new(params[:subject])
    #Save the object
    if @subject.save
      #if save succeeds, redirect to the list action
      redirect_to(:action => 'list')
    else
      #if save fails, redisplay the form so user can fix problems
      render('new')
    end
  end
  
# method for edit function
  def edit
    @subject=Subject.find(params[:id])

  end
  
  # method for update function
    def update
      @subject=Subject.find(params[:id])
        #Save the object
        if @subject.update_attributes(params[:subject])
          #if save succeeds, redirect to the list action
          redirect_to(:action => 'show', :id => @subject.id)
        else
          #if save fails, redisplay the form so user can fix problems
          render('new')
        end
    end
  
  
end