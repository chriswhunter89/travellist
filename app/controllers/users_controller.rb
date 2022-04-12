class UsersController < ApplicationController
  def show
    @user = current_user

    @markers = @user.destinations.geocoded.map do |destination|
      {
        lat: destination.latitude,
        lng: destination.longitude,
        info_window: render_to_string(partial: "info_window", locals: { destination: destination })
      }
    end
  end

end
