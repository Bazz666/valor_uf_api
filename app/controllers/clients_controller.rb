class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :update, :destroy]

    def client_request
        @client= Client.find_by(client_name: params[:id])
        render json: @client
    end


    def index

        @client = Client.all

        render json: @client
    end


    def show
        render json: {count: @client.count}
    end


    def update
        if @client.update(client_params)
        render json: @client
        else
        render json: @client.errors, status: :unprocessable_entity
        end
    end


    def destroy
        @client.destroy
    end



    private
    
    def set_client
        @client = Client.find_by(client:params[:id]) #:id
    end

    
    def client_params
        params.require(:clients).permit(:client_name, :n_client)
    end


end