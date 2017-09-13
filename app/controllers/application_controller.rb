class ApplicationController < ActionController::Base
  require Rails.root.join("app/models/InquiryInfo")
  protect_from_forgery with: :exception
end
