Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://khrabrov-oblako-front-2.herokuapp.com:8080'
    resource '*',
             :headers => :any,
             :methods => [:post, :get, :patch]
  end
end