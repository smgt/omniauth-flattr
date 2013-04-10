require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Flattr < OmniAuth::Strategies::OAuth2

      option :client_options, {
        :site          => "https://api.flattr.com",
        :authorize_url => "https://flattr.com/oauth/authorize",
        :token_url     => "https://flattr.com/oauth/token"
      }

      def request_phase
        super
      end

      uid { raw_info['username'] }

      info do
        {
          'nickname' => raw_info['username'],
          'name' => raw_info['firstname'] + raw_info['lastname'],
          'image' => raw_info['avatar'],
          'email' => raw_info['email'],
          'urls' => {
            'Flattr' => raw_info['link'],
          },
        }
      end

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        @raw_info ||= access_token.get("/rest/v2/user").parsed
      end

    end
  end
end

OmniAuth.config.add_camelization "flattr", "Flattr"
