class ListsController < ApplicationController
	before_action :set_list, only: [:show, :edit, :update, :destroy]

	# GET /lists
	def index
		@lists = List.all

		respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @lists }
    end
	end

	# GET /lists/1
	def show
		@list = List.find(params[:id])
		@tasks = @list.tasks
	end

	# GET /lists/new
	def new
		@list = List.new
	end

	# GET /lists/1/edit
	def edit
	end

	# POST /lists
	def create
		@list = List.new(list_params)

		if @list.save
			redirect_to @list, notice: 'List was successfully created.'
		else
			render action: 'new'
		end
	end

	# PATCH/PUT /lists/1
	def update
		if @list.update(list_params)
			redirect_to @list, notice: 'List was successfully updated.'
		else
			render action: 'edit'
		end
	end

	# DELETE /lists/1
	def destroy
		@list.destroy
		redirect_to lists_url, notice: 'List was successfully destroyed.'
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_list
			@list = List.find(params[:id])
		end

		# Only allow a trusted parameter "white list" through.
		def list_params
			params.require(:list).permit(:name, :list_status)
		end
end
