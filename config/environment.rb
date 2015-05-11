# Load the Rails application.
require File.expand_path('../application', __FILE__)

ENV['RANSACK_FORM_BUILDER'] = '::SimpleForm::FormBuilder'

# Initialize the Rails application.
Rails.application.initialize!
