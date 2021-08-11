class ApplicationController < ActionController::API

  def encode_token(payload)
    JWT.encode(payload, 'my_secret')
  end

  def current_user
    User.find_by(id: @current_user_id)
  end

  def authenticate_user
    if request.headers['Authorization'].present?
      token = request.headers['Authorization']
      puts request.headers['Authorization']
        begin
          jwt_payload = JWT.decode(token, 'my_secret', true, algorithm: 'HS256')          
          user_id = jwt_payload[0]['user_id']
          @current_user_id = user_id
        rescue JWT::ExpiredSignature => e
          puts "Exception class is #{e.class.name}"
          puts "Exception message is #{e.message}"
          puts "Exception backtrace is #{ e.backtrace}"
          puts(token)

          head :unauthorized
        rescue JWT::VerificationError => e
          puts "Exception class is #{e.class.name}"
          puts "Exception message is #{e.message}"
          puts "Exception backtrace is #{ e.backtrace}"        
          puts(token)

          head :unauthorized
        rescue JWT::DecodeError => e
          puts "Error"
          puts "Exception class is #{e.class.name}"
          puts "Exception message is #{e.message}"
          puts "Exception backtrace is #{ e.backtrace}"
          puts(token)

          head :unauthorized
        end
    else
      puts "No header :("
      head :unauthorized
    end
  end
end
