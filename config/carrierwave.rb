CarrierWave.configure do |config|
config.fog_credentials = {

   provider:                         'Google',
    google_storage_access_key_id:     'GOOGMVNFRHLH2M7MI7GU',
    google_storage_secret_access_key: '8ey0D4jTFYJ/S/Blm9qtQdQXapO/vTEVLJDeG8w7'
    }

    config.fog_directory = 'soplon'
end