class OrganizationsController < ApplicationController

  def index
   render 'volunteers/index'
  end

  def show
    @org = Organization.find(params[:id])
  end

  def edit
    @org = Organization.find(params[:id])
  end

   def update
    @org = Organization.find(params[:id])


    if @org.update(organization_params)
      redirect_to @org
    end

  end

   def destroy
    @org = Organization.find(params[:id])
    @org.destroy

    redirect_to organizations_path
  end

  private
  def organization_params
    params.require(:organization).permit(:name, :id, :email, :category, :bio, :website, :phone, :address, :city, :state)
  end

end
