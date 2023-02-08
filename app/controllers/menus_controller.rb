

class MenusController < ApplicationController

def index
    @menus = Menu.all
end

def show
    @menu = Menu.find(params[:id])
  end

def new
    @menu = Menu.new # Needed to instantiate the form_with
end

def create
    @menu = Menu.new(menu_params)
    @menu.save! # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to menus_path(@menu)
end




private

def menu_params
  params.require(:menu).permit(:name_menu, :rating, :ingredient, :not_ingredient)
end

end
