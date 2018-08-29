module ActiveStorageSilentLogs
  class Railtie < ::Rails::Railtie
    initializer "active_storage_silent_logs" do
      Rails.application.config.middleware.insert_before Rack::Sendfile, ActiveStorageSilentLogs::SilentLogger

      ActiveStorage::BaseController.send :include, ActiveStorageSilentLogs::Controller

      Rails.application.config.filter_parameters += [:content_type, :disposition, :encoded_key, :signed_blob_id, :variation_key]
    end
  end
end
