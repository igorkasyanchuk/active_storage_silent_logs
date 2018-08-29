module ActiveStorageSilentLogs
  class SilentLogger
    KEY    = 'active_storage_silent_logs.old_level'.freeze
    FORMAT = /rails\/active_storage/.freeze

    attr_reader :level

    def initialize(app)
      @app   = app
      @level = Rails.logger.level
    end

    def call(env)
      if skip?(env)
        tssss(env) { @app.call(env) }
      else
        @app.call(env)
      end
    end

    def tssss(env)
      begin
        Rails.logger.level = Logger::ERROR
        yield
      ensure
        Rails.logger.level = level
      end
    end

    private

    def skip?(env)
      env['PATH_INFO'] =~ FORMAT
    end

    def whats_is_going_on
      puts "===================== #{Rails.logger.level}"
    end

  end
end