CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['S3_KEY'],                        # required
    :aws_secret_access_key  => ENV['S3_SECRET'], 
    :region                 => 'us-west-2'                  # optional, defaults to 'us-east-1'
    #:host                   => 'https://s3-us-west-2.amazonaws.com/test-book',             # optional, defaults to nil
    # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'test-book'                             # required
  config.fog_public     = false                                   # optional, defaults to true
end