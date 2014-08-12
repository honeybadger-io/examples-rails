class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter do
    Honeybadger.context({
      :user_id => current_user.id,
      :user_email => current_user.email
    }) if current_user
  end

  protected

    def current_user
      @current_user ||= Struct.new(:id, :first_name, :last_name, :email).new(1, Faker::Name.first_name, Faker::Name.last_name, Faker::Internet.email)
    end
end
