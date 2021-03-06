# frozen_string_literal: true

require 'starburst/engine'

module Starburst
  mattr_accessor :base_controller do
    '::ApplicationController'
  end

  mattr_accessor :current_user_method do
    :current_user
  end

  mattr_accessor :user_instance_methods do
    []
  end

  def self.configuration
    yield self
  end
end
