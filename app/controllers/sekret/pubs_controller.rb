class Sekret::PubsController < SekretController
	
	def index
		@person = Person.find(params[:person_id])
		@pubs = Pub.all
	end

	def show
		@person = Person.find(params[:person_id])
		@pub = Pub.find(params[:id])
	end

	def new
		@person = Person.find(params[:person_id])
		@pub = @person.pubs.new
	end

	def create
		
		@person = Person.find(params[:person_id])
		@pub = @person.pubs.new(pub_params)

		if @pub.save
			flash[:notice] = "Article created successfully!"
			redirect_to sekret_person_pub_path(@person, @pub)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@person = Person.find(params[:person_id])
		@pub = Pub.find(params[:id])
	end

	def update
		@person = Person.find(params[:person_id])
		@pub = Pub.find(params[:id])

		if @pub.update(pub_params)
			redirect_to sekret_person_pub_path(@person, @pub)
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@person = Person.find(params[:person_id])
		pub = Pub.find(params[:id])
		pub.destroy
		redirect_to sekret_person_path(@person)
	end




	private
	def pub_params
		params.require(:pub).permit(
			:pubmed_id, :journal, :pages, :date, :type, :link, :authors,
			:title, :notes, :auth_id)
	end
end
