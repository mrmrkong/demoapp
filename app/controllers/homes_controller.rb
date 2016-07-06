class HomesController < ApplicationController
  
  def new
    @home = Home.new
  end
  
  def create
    @home = Home.new(params[:home])
    if @home.save
      flash[:success] = "Home created"
      redirect_to homes_path
    else
      flash[:failure] = "Home not created"
      redriect_to homes_path
    end
  end
  
  def show
    @home = Home.find(params[:id])
  end
  
  def index
    @home = Home.all
  end
  
  def edit
    @home = Home.find(params[:id])
  end
  
  def update
    @home = Home.find(params[:id])
    @home.assign_attributes(params[:home])
    if @home.save
      redirect_to edit_home_path(@home.id, anchor: "2")
    else
      redirect_to edit_home_path(@home.id)
    end
  end
end
