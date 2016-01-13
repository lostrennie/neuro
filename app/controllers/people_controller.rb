class PeopleController < ApplicationController


	def index
		@people = Person.all

		if params[:filter_by]
    		@people = Person.where(:position => params[:filter_by])
  		else
    		@people = Person.all
  		end
	end

	def show
		if params[:id]
	    	@person = Person.find(params[:id])
	    else
	    	@person = Person.find_by(position: params[:position], user_name: params[:user_name])
	    end
	end

	def new
		@person = Person.new
	end

	def create
		@person = Person.new(person_params)

		if @person.save
			flash[:notice] = "Person created successfully!"
			redirect_to friendly_person_path(@person.position, @person.user_name)
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
			redirect_to friendly_person_path(@person.position, @person.user_name)
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		person = Person.find(params[:id])
		person.destroy
		redirect_to people_path
	end

	private
	def person_params
		params.require(:person).permit(
			:fname, :lname, :user_name, :auth_id, :school, :building, 
			:office, :phone, :p1, :p2, :boss, :interest, :research,
			:position, :title, :prefix, :thumbnail, :banner, :focus1, :focus2, :focus3)
	end


end
