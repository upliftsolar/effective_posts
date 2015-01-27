require 'kaminari'
require 'migrant'     # Required for rspec to run properly
require "effective_posts/engine"

module EffectivePosts
  mattr_accessor :posts_table_name

  mattr_accessor :authorization_method
  mattr_accessor :simple_form_options
  mattr_accessor :layout

  mattr_accessor :categories
  mattr_accessor :use_category_routes

  mattr_accessor :per_page

  def self.setup
    yield self
  end

  def self.authorized?(controller, action, resource)
    if authorization_method.respond_to?(:call) || authorization_method.kind_of?(Symbol)
      raise Effective::AccessDenied.new() unless (controller || self).instance_exec(controller, action, resource, &authorization_method)
    end
    true
  end
end