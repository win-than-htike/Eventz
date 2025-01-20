Rails.application.configure do
  # Configure SolidQueue
  config.solid_queue.database_configuration = :queue

  # Configure SolidCache
  config.cache_store = :solid_cache_store
  config.solid_cache.database_configuration = :cache

  # Configure SolidCable
  config.solid_cable.database_configuration = :cable
end