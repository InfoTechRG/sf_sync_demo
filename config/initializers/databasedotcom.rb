require "databasedotcom"

sfdc_auth_config = YAML.load_file("#{::Rails.root.to_s}/config/databasedotcom.yml")
  
$sf_client = Databasedotcom::Client.new("config/databasedotcom.yml")
$sf_client.authenticate :username => sfdc_auth_config['username'], :password => sfdc_auth_config['password']
$sf_client.sobject_module = Databasedotcom
$sf_client.materialize "Account"