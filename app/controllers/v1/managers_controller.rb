module V1
  class ManagersController < ApplicationController
    def index
      managers = Manager.all.includes(:employees)
      render json: managers
    end

    def show
    end
  end
end