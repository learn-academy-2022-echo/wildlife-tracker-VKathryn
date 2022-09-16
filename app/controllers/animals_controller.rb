class AnimalsController < ApplicationController
    def index
        animals = Animal.all
        render json: animals
    end
    def show
        animal = Animal.find(params[:id])
        render json: animal
    end
    def new
    end
    def create
        animals = Animals.create(
          common_name: params[:common_name],
          scientific_binomial: params[:scientific_binomial]
        )
        render json: animal
    end
          
end
