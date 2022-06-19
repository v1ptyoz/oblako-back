# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

use Rack::Cors do
  allow do
    origins '*'
    resource '*',
             methods: [:get, :post, :patch, :options, :head],
  end
end

run Rails.application
Rails.application.load_server
