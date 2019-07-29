Rails.configuration.stripe = {
    :publishable_key => Rails.application.credentials.stripe[:development_public_key],    
    :secret_key => Rails.application.credentials.stripe[:development_secret_key]    
  }    
  Stripe.api_key = Rails.configuration.stripe[:secret_key]