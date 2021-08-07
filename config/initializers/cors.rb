# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://60f6062426d78d008ee480ef--pensive-leavitt-100e0b.netlify.app'

    resource '*',
      expose: ['authorization', 'access-control-expose-headers', 'access-token', 'expiry', 'token-type', 'uid', 'client'],
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
