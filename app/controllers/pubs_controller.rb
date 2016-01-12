class PubsController < ApplicationController

	def index
		@pubs = Pub.all
	end

	def show
		@pub = Pub.find(params[:id])
	end

	def new
		@person = Person.find(params[:person_id])
		@pub = @person.pubs.new
	end

	def create
		
		@pub = Pub.new(pub_params)

		if @pub.save
			flash[:notice] = "Article created successfully!"
			redirect_to pub_path(@pub)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@pub = Pub.find(params[:id])
	end

	def update
		@pub = Pub.find(params[:id])

		if @pub.update(pub_params)
			redirect_to pub_path(@pub)
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		pub = Pub.find(params[:id])
		pub.destroy
		redirect_to people_path
	end




	private
	def pub_params
		params.require(:pub).permit(
			:pubmed_id, :journal, :pages, :date, :type, :link, :authors,
			:title, :notes, :auth_id, :person_id)
	end
end
