class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "User CMS API" }
    end
end
