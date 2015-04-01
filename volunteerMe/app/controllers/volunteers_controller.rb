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
    p"---------------------------------------"
     if params[:image_id].present?
      p "were here"
       preloaded = Cloudinary::PreloadedFile.new(params[:image_id])
       raise "Invalid upload signature" if !preloaded.valid?
       @volunteer.image_id = preloaded.identifier
     end
    p params
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

  private
    def volunteer_params
      params.require(:volunteer).permit(:name, :email, :image_id)
      # Cloudinary::Uploader.upload(File.open(''))
      # Cloudinary::Uploader.upload(params[:avatar.to_s])
    end

    def superpower_params
      params.require(:superpower).permit(:name)
    end

    # def avatar_params
    #   Cloudinary::Uploader.upload(params[:volunteer][:avatar])
    # end

end
