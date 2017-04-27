class ApplicationController < ActionController::API
  # protect_from_forgery with: :exception

  def hello
    render status: 200, json: "RAILS API SERVER OK"
  end
end
