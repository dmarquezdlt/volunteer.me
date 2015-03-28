class OrganizationsController < ApplicationController

  def index
   @organization = Organization.all
  end

  def show
    @org = Organization.find(params[:id])
  end

   def update
    @org.update_attributes(org_params)

    redirect_to @organization
  end

   def destroy
    @org = Organization.find(params[:id])
    @org.destroy

    redirect_to organizations_path
  end

  private
  def organization_params
    params.require(:organization).permit(:name, :id, :email)
  end

end
