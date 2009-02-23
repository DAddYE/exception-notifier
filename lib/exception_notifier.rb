require 'mailer/exception_notifier'
require 'controller/rescue'

ActionController::Base.class_eval do
  include Lipsiadmin::Controller::Rescue
end