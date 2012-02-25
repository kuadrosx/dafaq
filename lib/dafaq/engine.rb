module Dafaq
  class Engine < ::Rails::Engine
    isolate_namespace Dafaq
    class << self
      attr_accessor :root
      def root
        @root ||= Pathname.new(File.expand_path('../../', __FILE__))
      end
    end

    config.generators do |g|
      g.orm             :mongoid
      g.template_engine :erb
      g.test_framework  :rspec
    end

    config.to_prepare do
      ::ApplicationController.send :helper, Dafaq::Engine.helpers
    end
  end
end
