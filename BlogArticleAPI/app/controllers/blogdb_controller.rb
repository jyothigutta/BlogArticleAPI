class BlogdbController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        render json: Blogdb.all
    end
    def show
        b = Blogdb.find(params[:id])
        render json: b
    end
    def create
    
        b= Blogdb.create('author': params[:author],
            'title': params[:title], 
            'category': params[:category],                                                         
            'content': params[:content],                                                         
            'imagelink': params[:imagelink] )            
           
        render html: "Saved"      
    end

    def update
        b=Blogdb.find(params[:id].to_i)
        b.update('author': params[:author],
            'title': params[:title], 
            'category': params[:category],                                                         
            'content': params[:content],                                                         
            'imagelink': params[:imagelink])
        render json: "Data Updated"
    end
    def destroy
        b=Blogdb.find(params[:id].to_i)
        b.destroy
        render json: "Data Deleted"
    end
end

