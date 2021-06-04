class ClientsController < ApplicationController

    def client_request
        @client= Client.find_by(client_name: params[:client_name])
        render json: @uf
    end


    def show
        render json: @client
    end

    private
    
    def client_request
        params.require(:client_name).permit(:client_name, :n_request)
    end

end