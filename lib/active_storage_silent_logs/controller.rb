module ActiveStorageSilentLogs
  module Controller
    extend ActiveSupport::Concern

    included do
      around_action :__with_no_logger
    end

    def __with_no_logger
      old_level = Rails.logger.level
      begin
        Rails.logger.level = Logger::ERROR
        yield
      ensure
        Rails.logger.level = old_level
      end
    end
    
  end
end