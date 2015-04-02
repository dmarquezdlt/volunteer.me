class VolunteersController < ApplicationController

  def index
    # @volunteer = Volunteer.find(params[:id])
    @events = Event.all
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
    @superpower = Superpower.new
    # authorize! :edit, @volunteer
    # authorize! :edit, @superpower
    # unauthorized! if current_volunteer.id != @volunteer.id
  end


  def update
    @volunteer = Volunteer.find(params[:id])
    # authorize! :edit, @volunteer

      if @volunteer.update(volunteer_params)
        redirect_to @volunteer
      else
        render 'edit'
      end
  end

  def destroy
    @volunteer = Volunteer.find(params[:id])
    @volunteer.destroy
    # authorize! :destroy, @volunteer
    redirect_to volunteers_path
  end


  def send_mail

    response = HTTParty.post("https://api.sendgrid.com/api/mail.send.json", query: {

    "api_user" => "macedo88",
    "api_key" => ENV['KEY'],
    "to" => params[:volunteer][:to],
    "from" => params[:volunteer][:from],
    "subject" => "Join Volunteer.me",
    "text" => "Volunteering Made Easy --- Come Find Volunteering Opportunities http://localhost:3000/"
    })


    redirect_to root_path

     # curl request to test api
     # curl -X POST https://api.sendgrid.com/api/mail.send.json -d api_user=macedo88 -d api_key=XXXXXXXX -d to=andres.macedo@gmail.com -d subject=hey -d text=Join Volunteer.me -d from=andres.macedo@gmail.com
  end


  private
    def volunteer_params
      params.require(:volunteer).permit(:name, :email, :avatar)
    end

    def superpower_params
      params.require(:superpower).permit(:name)
    end


end
