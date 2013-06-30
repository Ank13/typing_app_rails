class TypesController < ApplicationController

  def index
    @types = Type.order("created_at DESC")
  end

  def show
    @type = Type.find(params[:id])
  end

  def new
    @type = Type.new
  end

  def create
    type = Type.create(params[:type])
    type.user = current_user
    type.save
    redirect_to types_path(type.id)
  end

  def edit
    @type = Type.find(params[:id])
  end

  def update
    type = Type.find(params[:id])
    type.update_attributes(params[:type])
    redirect_to type_path(type)
  end

  def destroy
    Type.destroy(params[:id])
    redirect_to types_path
  end

end
