Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_method"
    get "/segment_params_url/:input_word/something" => "params_examples#segment_params_method"
    post "/body_params_url" => "params_examples#body_params_method"

    get "/query_name_url" => "params_examples#query_name_method"
    get "/query_guess_url" => "params_examples#query_guess_method"
    get "/segment_guess_url/:my_guess" => "params_examples#query_guess_method"
  end
end
