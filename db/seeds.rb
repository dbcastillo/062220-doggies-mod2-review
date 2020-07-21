require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

Dog.destroy_all

Dog.create(name: "Mr Perfect", age: 657, image_url: Dog.random_dog)
Dog.create(name: "Medusa", age: 4, image_url: Dog.random_dog)
Dog.create(name: "Skittles", age: 9000, image_url: Dog.random_dog)
Dog.create(name: "Pototo", age: 1, image_url: Dog.random_dog)
Dog.create(name: "Big Kraft Yellow", age: -79, image_url: Dog.random_dog)