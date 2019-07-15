# frozen_string_literal: true

# Application actions
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "Hello, fighters of the Space!"
  end
end
