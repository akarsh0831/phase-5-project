class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session,
    # protect_from_forgery with: :exception,
    if: Proc.new { |c| c.request.format =~ %r{application/json} }
    # skip_before_action :verify_authenticity_token
end