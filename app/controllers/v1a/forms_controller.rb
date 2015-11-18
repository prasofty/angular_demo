class V1a::FormsController < V1a::BaseController

	def index
		@forms = Form.all
		render json: {success: true, forms: @forms}
	end

	def create
		@form = Form.new form_params
		Rails.logger.debug @form.inspect
		if @form.save
			render json: {success: true, form: @form}
		else
			render json: {success: false, errors: @form.errors}
		end
	end

	def show
		form = Form.find params[:id]
		render json: {success: true, form: form}
	end

	private

	def form_params
		params.require(:form).permit(:title, :fields)
	end
end
