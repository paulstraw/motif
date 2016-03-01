class ApplicationController < ActionController::Base
  force_ssl if: Rails.env.production?
  before_action :set_hsts_header, if: Rails.env.production?

private
  def set_hsts_header
    response.headers['Strict-Transport-Security'] = "max-age=31536000"
  end
end
