#CarrierWave.configure do |config|
#  config.grid_fs_database  = Mongoid.database.name
#  config.grid_fs_host = Mongoid.config.master.connection.host
#  config.storage = :grid_fs
#  config.grid_fs_access_url = "/images"
#
#end

CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => 'AKIAI2X2JBW27IIQVC4A',       # required
      :aws_secret_access_key  => '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'       # required
      #:region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'crowdles'                     # required
  #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  #config.fog_public     = false                                   # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end