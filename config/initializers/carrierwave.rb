CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIOQNVCQ2W6T4PBAA',                        # required
    :aws_secret_access_key  => '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', 
    :region                 => 'us-west-2'                  # optional, defaults to 'us-east-1'
    #:host                   => 'https://s3-us-west-2.amazonaws.com/test-book',             # optional, defaults to nil
    # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'test-book'                             # required
  config.fog_public     = false                                   # optional, defaults to true
end