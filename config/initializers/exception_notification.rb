require 'exception_notification/rails'

ExceptionNotification.configure do |config|
  config.add_notifier :email, {
    email_prefix:          '[sample_app] ',
    sender_address:        %("Notifier" <notifier@railstutorial.jp>),
    exception_recipients:  %w(hkame6926@gmail.com)
  }
end
