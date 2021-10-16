class CategoriesController < ApplicationController
    def new
        @category = Category.new
    end

    def create
        @category = Category.create(name: params[:category][:name], description: params[:category][:description])
    end

    def show
        @category = Category.find(params[:id])
    end

    def index
        @categories = Category.all
    end

    def edit
        @category = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        @category.update(name: params[:category][:name], description: params[:category][:description])
        
        redirect_to @category
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        
        redirect_to action: "index"
    end
end
