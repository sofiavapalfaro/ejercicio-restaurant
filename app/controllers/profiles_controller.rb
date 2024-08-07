class ProfilesController < ApplicationController
  before_action :authenticate_user!  # Asegura que solo usuarios autenticados puedan acceder

  def show
    @user = current_user
  end
end
