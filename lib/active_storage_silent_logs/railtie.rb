module ActiveStorageSilentLogs
  class Railtie < ::Rails::Railtie
    initializer "active_storage_silent_logs" do
      Rails.application.config.middleware.insert_before Rack::Sendfile, ActiveStorageSilentLogs::SilentLogger

      Rails.application.reloader.to_prepare do
        ActiveStorage::BaseController.send :include, ActiveStorageSilentLogs::Controller
      end

      Rails.application.config.filter_parameters += [:content_type, :disposition, :encoded_key, :signed_blob_id, :variation_key]
    end
  end
end
