class ApplicationController < ActionController::API
  include ResponseConcern

  rescue_from StandardError do |e|
    json_response(response: { error: e.message }, status: :unprocessable_entity)
  end 

  rescue_from ActiveRecord::RecordInvalid do |e|
    json_response(response: { error: e.message }, status: :unprocessable_entity)
  end

  rescue_from ActiveRecord::RecordNotFound do |e|
    json_response(response: { error: e.message }, status: :not_found)
  end
end
