class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from ActionController::RoutingError, :with => :error_render_method
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  before_filter :beforeFilter

  def beforeFilter
    $request = request
  end

  def error_render_method
    respond_to do |type|
      type.xml { render :template => "errors/error_404", :status => 404 }
      type.all  { render :nothing => true, :status => 404 }
    end
    true
  end

  def record_not_found
    render 'errors/record_not_found' # Assuming you have a template named 'record_not_found'
  end

end
