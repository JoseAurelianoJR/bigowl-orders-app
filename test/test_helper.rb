ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
# require "minitest/autorun"

Turn.config.format = :outline

# DatabaseCleaner.strategy = :truncation

# class MiniTest::Spec
  # before :each do
  #   DatabaseCleaner.start
  # end

  # after :each do
  #   DatabaseCleaner.clean
  # end
# end