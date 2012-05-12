require 'spec_helper'

describe OmniAuth::Strategies::Flattr do
  subject do
    OmniAuth::Strategies::Flattr.new({})
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://api.flattr.com")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://flattr.com/oauth/authorize')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://flattr.com/oauth/token')
    end
  end
end
