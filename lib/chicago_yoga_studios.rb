require "chicago_yoga_studios/version"
require "unirest"

module ChicagoYogaStudios
  class Business
    attr_reader :name, :zip_code, :longitude, :latitude, :address, :city, :state

    def initialize(input_options)
      @name = input_options["doing_business_as_name"]
      @zip_code = input_options["zip_code"]
      @longitude = input_options["longitude"]
      @latitude = input_options["latitude"]
      @address = input_options["address"]
      @city = input_options["city"]
      @state = input_options["state"]
    end

    def self.all
      data_array = Unirest.get('https://data.cityofchicago.org/resource/uupf-x98q.json?$q=yoga').body
      create_business(data_array)
    end

    def self.find(search_term)
      data_array = Unirest.get("https://data.cityofchicago.org/resource/uupf-x98q.json?$q=yoga+#{search_term}").body
      create_business(data_array)
    end

    private
    def self.create_business(data_array)
      businesses = []
      data_array.each do |business_data|
        businesses << Business.new(business_data)
      end
      businesses
    end
  end
end
