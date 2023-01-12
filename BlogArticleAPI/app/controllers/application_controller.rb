class ApplicationController < ActionController::Base
    def index
        render html: "Blogdb"
    end
end
