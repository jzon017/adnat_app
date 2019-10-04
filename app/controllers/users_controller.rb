class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
		#if  password: [params :password] == cpassword: [params :cpassword]
		#Error handling for the input
		str = params[:name]
		#chk = str.count('0-9' + '!-?' + ' ') > 0 || str1.count('0-9' + '!-?' + ' ') > 0
		#if chk == false
			if (params[:name] != ("" || nil) ) && (params[:email] != ("" || nil)) && (params[:password] != ("" || nil)) && (params[:cpassword] != ("" || nil))
				tst = User.find_by(name: params[:mame], email: params[:email])
				tst1 = User.find_by(email: params[:email])
				if tst == nil
					if tst1 == nil
						if params[:password] == params[:cpassword]
						User.create(name: params[:name], email: params[:email], password: params[:password])
						redirect_to root_path
						#Notification success na nakapagcreate na
						flash[:success] = "Account created!"
					 	else
							#Notification na hindi same yung password sa confirm password
							flash[:error] = "Password must be the same!"
							redirect_to users_new_path
						end
					else
						#Notification merong existing email
						flash[:error] = "Email already exists!"
						redirect_to users_new_path

					end
				else
					redirect_to users_new_path
					#Notification existing yung account
					flash[:error] = "Account already exists!"
				end
			else
				#Notification error na dapat walang blank
				redirect_to users_new_path
			end
		#else
			#Notification format error
		#	redirect_to root_path
		#end
	end

  def show
  	@user = User.find(params[:id])
  end


end
