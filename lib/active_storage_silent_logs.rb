require "active_storage_silent_logs/railtie"

module ActiveStorageSilentLogs
  class SilentLogger
    KEY    = 'active_storage_silent_logs.old_level'.freeze
    FORMAT = /rails\/active_storage/.freeze

    def initialize(app)
      @app = app
    end

    def call(env)
      if skip?(env)
        tssss(env) do
          @app.call(env)
        end
      else
        @app.call(env)
      end
    end

    def tssss(env)
      env[KEY] = Rails.logger.level
      begin
        Rails.logger.level = Logger::ERROR
        yield
      ensure
        Rails.logger.level = env[KEY] if env[KEY]
      end
    end


    private

    def skip?(env)
      env['PATH_INFO'] =~ FORMAT
    end
    
  end
end
