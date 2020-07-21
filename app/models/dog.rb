class Dog < ApplicationRecord
  validates :name, presence: true, format: {with: /[a-zA-Z]/}
  validates :age, numericality: true

  def self.random_dog
    url = "https://dog.ceo/api/breeds/image/random"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    parsed = JSON.parse(response.body)
    parsed["message"]
  end
end
