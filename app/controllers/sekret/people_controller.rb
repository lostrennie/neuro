class Sekret::PeopleController < SekretController

	def index
		@people = Person.all

		if params[:filter_by]
    		@people = Person.where(:position => params[:filter_by])
  		else
    		@people = Person.all
  		end
	end

	def show
		@person = Person.find(params[:id])
		
	end

	def new
		@person = Person.new
	end

	def create
		@person = Person.new(person_params)

		if @person.save
			flash[:notice] = "Person created successfully!"
			redirect_to sekret_person_path(@person)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@person = Person.find(params[:id])
	end

	def update
		@person = Person.find(params[:id])

		if @person.update(person_params)
			redirect_to sekret_person_path(@person)
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		person = Person.find(params[:id])
		person.destroy
		redirect_to sekret_people_path
	end




	private
	def person_params
		params.require(:person).permit(
			:fname, :lname, :user_name, :auth_id, :school, :building, 
			:office, :phone, :pi1, :pi2, :boss_id, :interest, :research, :search, :lab_name,
			:position, :title, :prefix, :focus1, :focus2, :focus3)
	end
end
