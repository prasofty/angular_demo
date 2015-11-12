class ApiController < ApplicationController
  respond_to :json

  def version1a
    render json: {status: :ok}
  end
end
