require "databasedotcom"

if File.exist?("#{::Rails.root.to_s}/config/databasedotcom.yml")
  sfdc_auth_config = YAML.load_file("#{::Rails.root.to_s}/config/databasedotcom.yml")
  $sf_client = Databasedotcom::Client.new("config/databasedotcom.yml")
  $sf_client.authenticate :username => sfdc_auth_config['username'], :password => sfdc_auth_config['password']
else
  $sf_client = Databasedotcom::Client.new
  $sf_client.authenticate :username => ENV['DATABASEDOTCOM_USERNAME'], :password => ENV['DATABASEDOTCOM_PASSWORD']
end

module SalesforceArSync::SalesforceSync
  SF_CLIENT = $sf_client
end