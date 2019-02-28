class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    input_message = params["the_message"]
    input_name = params["name"]
    @output_message = "The message is #{input_message}"
    @output_message2 = "The name is #{input_name}"
    render "query_params.json.jbuilder"
  end
end
