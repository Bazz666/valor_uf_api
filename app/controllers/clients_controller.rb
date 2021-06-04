class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :update, :destroy]

    def client_client
        @client= Client.find_by(client_name: params[:client_name])
        render json: @uf
    end


    def index

        @clients = Client.all

        render json: @clients
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
        @client = Client.find_by(xclient:params[:client]) #:id
    end

    
    def client_params
        params.require(:client).permit(:client_name, :n_client)
    end


end