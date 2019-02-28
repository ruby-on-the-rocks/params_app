class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    input_message = params["the_message"]
    input_name = params["name"]
    @output_message = "The message is #{input_message}"
    @output_message2 = "The name is #{input_name}"
    render "query_params.json.jbuilder"
  end

  def segment_params_method
    @output_thing = params["input_word"]
    render "segment_params.json.jbuilder"
  end

  def body_params_method
    input_value = params["input_secret_stuff"]
    @output_message = "The secret is #{input_value}"
    render "body_params.json.jbuilder"
  end

  def query_name_method
    input_name = params["the_name"] || "(no name provided)"
    @output_message = input_name.upcase
    # if input_name[0].upcase == "A"
    if input_name.upcase.starts_with?("A")
      @output_second_message = "Hey your name starts with a!"
    else
      @output_second_message = ""
    end
    render "query_name.json.jbuilder"
  end

  def query_guess_method
    winning_number = 32
    input_guess = params["my_guess"].to_i
    if input_guess > winning_number
      @output_message = "Too high"
    elsif input_guess < winning_number
      @output_message = "Too low"
    else
      @output_message = "Just right"
    end
    render "query_guess.json.jbuilder"
  end
end
