#
require 'securerandom'

def secure_token
  token_file = Rails.root.join('tmp/.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

PlannerWeb::Application.config.secret_token = secure_token
