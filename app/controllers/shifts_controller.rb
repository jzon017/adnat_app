class ShiftsController < ApplicationController

def new
end

def add_shift
	if (params[:date]  != ("" || nil)) && (params[:time1] != ("" || nil) ) && (params[:time2] != ("" || nil) ) && (params[:breaklength] != ("" || nil) )
		i = User.find_by_id(current_user.id)
		j = Org.find_by(org_id: params[:org_id])
		Shift.create(user_id: current_user.id, date: params[:date], start: params[:time1], finish: params[:time2], breaklength: params[:breaklength])
	else
	end
	redirect_to shifts_shifts_path
end

def shifts
	@shift = Shift.all

end

end
