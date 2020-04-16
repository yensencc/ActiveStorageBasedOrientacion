class UploadsController < ApplicationController
  require 'aws-sdk'
  before_action :authenticate_user!, :except => [:show, :index]
  

      
  def new
  end

  def create

    if current_user.admin
    bucket = "orifamiliar"
    s3 = Aws::S3::Resource.new(region: 'us-east-1')
    
    # Get just the file name
    name = File.basename(params[:file].path)
    
    # Create the object to upload
    obj = s3.bucket(bucket).object(name)
    
    # Upload it      
    obj.upload_file(params[:file].path )
    
    # Create an object for the upload
      @upload = Upload.new(
      		url: obj.public_url,
  		    name: obj.key,
  		    title: params[:title],
  		    description: params[:description]
      	)


      # Save the upload
      if @upload.save
        redirect_to uploads_index_path, success: 'File successfully uploaded'
      else
        flash.now[:notice] = 'There was an error'
        redirect_to root_path
      end

      

      else
            flash.alert = "You must have Admin rigths to upload a new Audio"

      end
  end

  def index
    @uploads = Upload.all
  end
  
  def show
    @upload = Upload.find(params[:id])
  end
  
end
