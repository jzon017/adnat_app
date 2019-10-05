class PagesController < ApplicationController
  
  def home
  end

  def organizations
  	@organizations = Org.all
  	@user = User.all
  end

  def shifts
  end

  def main
  	@organizations = Org.all
  	@user = User.all
  	
  end

  def getorg
  		if (params[:orgname] != ("" || nil) ) && (params[:rate] != ("" || nil))
			tst = Org.find_by(orgname: params[:orgname])
			if tst == nil				
					Org.create(orgname: params[:orgname], rate: params[:rate])
					a = User.find_by_id(current_user.id)
					b = Org.find_by_orgname(params[:orgname])
					a.org_id = b.org_id
					a.save
					flash[:success] = "Created!"
					redirect_to pages_main_path
						
					#Notification success na nakapagcreate na
											
			else
				redirect_to pages_main_path
				#Notification existing yung account
				flash[:error] = "Organization already exists!"
			end
		else
				#Notification error na dapat walang blank
			redirect_to pages_main_path
		end
  end

  def orgedit
  	
  	Org.find(params[:org_id])
  	if (params[:orgname] != ("" || nil) ) && (params[:rate] != ("" || nil))
			if (current_user.org_id != nil)
				aEdit = Org.where(org_id: current_user.org_id)
				aEdit.update(orgname: params[:orgname], rate: params[:rate])
				flash[:success] = "Updated!"

				redirect_to pages_main_path
						
				#Notification success na nakapagcreate na				
			else
				aEdit = Org.where(org_id: params[:prev_id])
				aEdit.update(orgname: params[:orgname], rate: params[:rate])
				flash[:success] = "Updated!"

				redirect_to pages_main_path
			end
	else
		#Notification error na dapat walang blank
		redirect_to pages_organizations_path
	end
  end

  def delete
  	Org.find(params[:org_id]).destroy
  end

end
