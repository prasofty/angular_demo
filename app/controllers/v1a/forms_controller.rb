class V1a::FormsController < V1a::BaseController

  def index
    @forms = Form.all
    render json: {success: true, forms: @forms}
  end
end
