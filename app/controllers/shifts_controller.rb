class ShiftsController < ApplicationController

def new
end

def add_shift
end

def shifts
	@shift = Shift.all
	if (params[:date]  != ("" || nil)) && (params[:time1] != ("" || nil) ) && (params[:time2] != ("" || nil) ) && (params[:breaklength] != ("" || nil) )
		i = User.find_by_id(current_user.id)
		j = Org.find_by(org_id: params[:org_id])
	else
	end
end

end
