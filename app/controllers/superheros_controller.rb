class SuperherosController < ApplicationController
    def index
        superheroes = Superhero.all
        render json: superheroes
    end

    def show
        superhero = Superhero.find(params[:id])
        render json: superhero, include: :supervillains
    end

    def create
        superhero = Superhero.create(name:params[:name])
        render json: {message: "Added: #{superhero.name}"}
    end

    def destroy
        superhero = Superhero.find(params[:id])
        render json: {message: "Removed: #{superhero.name}"}
        superhero.destroy
    end
end
