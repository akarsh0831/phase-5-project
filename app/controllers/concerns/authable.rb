module Authable
    extend ActiveSupport::Concern
  
    included do
      before_action :current_user
    end
  
    def current_user
        puts 'SESSION:'
        puts session[:user_id]
        # return nil unless session[:user_id]
    
        # @current_user ||= User.find(session[:user_id])
        @current_user ||= User.find(1)
    end
  
    def authenticate
      render json: { error: 'Access Denied' }, status: 401 unless current_user
    end
end