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

	

	private
	def person_params
		params.require(:person).permit(
			:fname, :lname, :user_name, :auth_id, :school, :building, 
			:office, :phone, :p1, :p2, :boss_id, :interest, :research, :search,
			:position, :title, :prefix, :lab_name, :focus1, :focus2, :focus3)
	end


end
