require_relative "./config/environment"


# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser
use Rack::Static, urls: ['./public/uploads'], root: 'public'

# Our application
run ApplicationController
