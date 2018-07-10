class LegalController < ApplicationController
  layout 'basic'

  %w[privacy terms_of_service third_parties].each do |name|
    define_method name do
      render "legal/#{ENV['LEGAL_DIR']}/#{name}"
    end
  end

  def gdpr
  end
end
