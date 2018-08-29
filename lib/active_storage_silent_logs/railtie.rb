module ActiveStorageSilentLogs
  class Railtie < ::Rails::Railtie
    initializer "active_storage_silent_logs" do
      #Rails.application.middleware.use ActiveStorageSilentLogs::SilentLogger

      Rails.application.config.middleware.insert_before Rack::Sendfile, ActiveStorageSilentLogs::SilentLogger
    end
  end
end
