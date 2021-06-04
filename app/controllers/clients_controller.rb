class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :update, :destroy]

    def client_request
        @client= Client.find_by(client_name: params[:client_name]) # indica que de mi tabla cliente voy a buscar al cliente por su  " client_name" cuando su "client_name" sea el valor " sergio" ***SELECT  "clients".* FROM "clients" WHERE "clients"."client_name" = $1 LIMIT $2  [["client_name", "Sergio"], ["LIMIT", 1]**
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
        params.require(:id).permit(:n_request)
    end


end