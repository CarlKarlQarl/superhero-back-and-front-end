class SupervillainsController < ApplicationController
    def index
        supervillains = Supervillain.all
        render json: supervillains
    end

    def show
        supervillain = Supervillain.find(params[:id])
        render json: supervillain
    end

    def create
        supervillain = Supervillain.create(name:params[:name], superhero:Superhero.find_by(name:params[:superhero]))
        render json: {message: "Added: #{supervillain.name}"}
    end

    def destroy
        supervillain = Supervillain.find(params[:id])
        render json: {message: "Removed: #{supervillain.name}"}
        supervillain.destroy
    end
end
