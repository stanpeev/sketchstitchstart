CarrierWave.configure do |config|
    config.root = Rails.root.join('public')
    config.cache_dir = "uploads"
    config.storage = :file
end