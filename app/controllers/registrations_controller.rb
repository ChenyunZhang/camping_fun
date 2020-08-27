class RegistrationsController < ApplicationController

    def new
        @registration = Registration.new
        @campers = Camper.all
        @activities = Activity.all
    end

    def create
        registration_params = params.require(:registration).permit(:camper_id, :activity_id)

        @registration = Registration.create(registration_params)

        camper = Camper.find(params[:registration][:camper_id])

        redirect_to camper_path(camper)
    end
end
