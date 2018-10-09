class LegalController < ApplicationController
  layout 'basic'

  def privacy
    render "legal/#{ENV.fetch('LEGAL_DIR', 'www.loomio.org')}/privacy.html.md"
  end

  def terms_of_service
    render "#{ENV.fetch('LEGAL_DIR', 'www.loomio.org')}/terms_of_service.html.md"
  end

  def third_parties
    render "/legal/#{ENV.fetch('LEGAL_DIR', 'www.loomio.org')}/third_parties.html.md"
  end

  def gdpr
  end
end
