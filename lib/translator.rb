# require modules here
require "yaml"
require 'pry'

def load_library(yaml_file)
  # code goes here
  library = YAML.load_file(yaml_file)
  library.each do |key, value|
    library[key] = { "english": library[key][0], "japanese": library[key][1] } 
  end
  library
end

def get_japanese_emoticon(yaml_file, emoticon)
  # code goes here

end

def get_english_meaning(yaml_file, japanese_emoticon)
  # code goes here
  name_of_emoticon = ""
  sorry_message = "Sorry, that emoticon was not found"
  library = load_library(yaml_file)
  library.find do |key, value|
    #binding.pry
    if library[key][:japanese] == japanese_emoticon
      name_of_emoticon = key
    end
  end
  #binding.pry
  name_of_emoticon == "" ? sorry_message : name_of_emoticon 
  #name_of_emoticon
end