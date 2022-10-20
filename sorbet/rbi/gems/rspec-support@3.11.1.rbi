# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rspec-support` gem.
# Please instead update this file by running `bin/tapioca gem rspec-support`.

module ActiveSupport::DescendantsTracker
  # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#88
  def descendants; end

  # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#92
  def direct_descendants; end

  # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#82
  def subclasses; end

  class << self
    # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#66
    def clear(classes); end

    # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#62
    def descendants(klass); end

    # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#11
    def direct_descendants(klass); end

    # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#50
    def disable_clear!; end

    # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#77
    def native?; end

    # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#58
    def subclasses(klass); end
  end
end

module RSpec; end
module RSpec::Rails; end

module RSpec::Rails::FeatureCheck
  private

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#26
  def has_action_cable_testing?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#42
  def has_action_mailbox?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#18
  def has_action_mailer?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#38
  def has_action_mailer_legacy_delivery_job?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#30
  def has_action_mailer_parameterized?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#22
  def has_action_mailer_preview?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#34
  def has_action_mailer_unified_delivery?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#6
  def has_active_job?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#10
  def has_active_record?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#14
  def has_active_record_migration?; end

  # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#46
  def type_metatag(type); end

  class << self
    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#26
    def has_action_cable_testing?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#42
    def has_action_mailbox?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#18
    def has_action_mailer?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#38
    def has_action_mailer_legacy_delivery_job?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#30
    def has_action_mailer_parameterized?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#22
    def has_action_mailer_preview?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#34
    def has_action_mailer_unified_delivery?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#6
    def has_active_job?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#10
    def has_active_record?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#14
    def has_active_record_migration?; end

    # source://rspec-rails/6.0.1/lib/rspec/rails/feature_check.rb#46
    def type_metatag(type); end
  end
end

class RSpec::Rails::Railtie < ::Rails::Railtie
  private

  # source://rspec-rails/6.0.1/lib/rspec-rails.rb#50
  def config_default_preview_path(options); end

  # source://rspec-rails/6.0.1/lib/rspec-rails.rb#40
  def config_preview_path?(options); end

  # source://rspec-rails/6.0.1/lib/rspec-rails.rb#33
  def setup_preview_path(app); end

  # source://rspec-rails/6.0.1/lib/rspec-rails.rb#56
  def supports_action_mailer_previews?(config); end
end

module Rails::Initializable
  mixes_in_class_methods ::Rails::Initializable::ClassMethods

  # source://railties/7.0.4/lib/rails/initializable.rb#66
  def initializers; end

  # source://railties/7.0.4/lib/rails/initializable.rb#58
  def run_initializers(group = T.unsafe(nil), *args); end

  class << self
    # source://railties/7.0.4/lib/rails/initializable.rb#7
    def included(base); end
  end
end

module Rails::Initializable::ClassMethods
  # @raise [ArgumentError]
  #
  # source://railties/7.0.4/lib/rails/initializable.rb#88
  def initializer(name, opts = T.unsafe(nil), &blk); end

  # source://railties/7.0.4/lib/rails/initializable.rb#71
  def initializers; end

  # source://railties/7.0.4/lib/rails/initializable.rb#75
  def initializers_chain; end

  # source://railties/7.0.4/lib/rails/initializable.rb#84
  def initializers_for(binding); end
end

class Rails::Initializable::Collection < ::Array
  include ::TSort

  # source://railties/7.0.4/lib/rails/initializable.rb#53
  def +(other); end

  # source://railties/7.0.4/lib/rails/initializable.rb#49
  def tsort_each_child(initializer, &block); end

  def tsort_each_node; end
end

class Rails::Initializable::Initializer
  # @return [Initializer] a new instance of Initializer
  #
  # source://railties/7.0.4/lib/rails/initializable.rb#14
  def initialize(name, context, options, &block); end

  # source://railties/7.0.4/lib/rails/initializable.rb#23
  def after; end

  # source://railties/7.0.4/lib/rails/initializable.rb#19
  def before; end

  # @return [Boolean]
  #
  # source://railties/7.0.4/lib/rails/initializable.rb#27
  def belongs_to?(group); end

  # source://railties/7.0.4/lib/rails/initializable.rb#35
  def bind(context); end

  # Returns the value of attribute block.
  #
  # source://railties/7.0.4/lib/rails/initializable.rb#12
  def block; end

  # source://railties/7.0.4/lib/rails/initializable.rb#40
  def context_class; end

  # Returns the value of attribute name.
  #
  # source://railties/7.0.4/lib/rails/initializable.rb#12
  def name; end

  # source://railties/7.0.4/lib/rails/initializable.rb#31
  def run(*args); end
end

# <tt>Rails::Railtie</tt> is the core of the Rails framework and provides
# several hooks to extend Rails and/or modify the initialization process.
#
# Every major component of Rails (Action Mailer, Action Controller, Active
# Record, etc.) implements a railtie. Each of them is responsible for their
# own initialization. This makes Rails itself absent of any component hooks,
# allowing other components to be used in place of any of the Rails defaults.
#
# Developing a Rails extension does _not_ require implementing a railtie, but
# if you need to interact with the Rails framework during or after boot, then
# a railtie is needed.
#
# For example, an extension doing any of the following would need a railtie:
#
# * creating initializers
# * configuring a Rails framework for the application, like setting a generator
# * adding <tt>config.*</tt> keys to the environment
# * setting up a subscriber with ActiveSupport::Notifications
# * adding Rake tasks
#
# == Creating a Railtie
#
# To extend Rails using a railtie, create a subclass of <tt>Rails::Railtie</tt>.
# This class must be loaded during the Rails boot process, and is conventionally
# called <tt>MyNamespace::Railtie</tt>.
#
# The following example demonstrates an extension which can be used with or
# without Rails.
#
#   # lib/my_gem/railtie.rb
#   module MyGem
#     class Railtie < Rails::Railtie
#     end
#   end
#
#   # lib/my_gem.rb
#   require "my_gem/railtie" if defined?(Rails::Railtie)
#
# == Initializers
#
# To add an initialization step to the Rails boot process from your railtie, just
# define the initialization code with the +initializer+ macro:
#
#   class MyRailtie < Rails::Railtie
#     initializer "my_railtie.configure_rails_initialization" do
#       # some initialization behavior
#     end
#   end
#
# If specified, the block can also receive the application object, in case you
# need to access some application-specific configuration, like middleware:
#
#   class MyRailtie < Rails::Railtie
#     initializer "my_railtie.configure_rails_initialization" do |app|
#       app.middleware.use MyRailtie::Middleware
#     end
#   end
#
# Finally, you can also pass <tt>:before</tt> and <tt>:after</tt> as options to
# +initializer+, in case you want to couple it with a specific step in the
# initialization process.
#
# == Configuration
#
# Railties can access a config object which contains configuration shared by all
# railties and the application:
#
#   class MyRailtie < Rails::Railtie
#     # Customize the ORM
#     config.app_generators.orm :my_railtie_orm
#
#     # Add a to_prepare block which is executed once in production
#     # and before each request in development.
#     config.to_prepare do
#       MyRailtie.setup!
#     end
#   end
#
# == Loading Rake Tasks and Generators
#
# If your railtie has Rake tasks, you can tell Rails to load them through the method
# +rake_tasks+:
#
#   class MyRailtie < Rails::Railtie
#     rake_tasks do
#       load "path/to/my_railtie.tasks"
#     end
#   end
#
# By default, Rails loads generators from your load path. However, if you want to place
# your generators at a different location, you can specify in your railtie a block which
# will load them during normal generators lookup:
#
#   class MyRailtie < Rails::Railtie
#     generators do
#       require "path/to/my_railtie_generator"
#     end
#   end
#
# Since filenames on the load path are shared across gems, be sure that files you load
# through a railtie have unique names.
#
# == Run another program when the Rails server starts
#
# In development, it's very usual to have to run another process next to the Rails Server. In example
# you might want to start the Webpack or React server. Or maybe you need to run your job scheduler process
# like Sidekiq. This is usually done by opening a new shell and running the program from here.
#
# Rails allow you to specify a +server+ block which will get called when a Rails server starts.
# This way, your users don't need to remember to have to open a new shell and run another program, making
# this less confusing for everyone.
# It can be used like this:
#
#   class MyRailtie < Rails::Railtie
#     server do
#       WebpackServer.start
#     end
#   end
#
# == Application and Engine
#
# An engine is nothing more than a railtie with some initializers already set. And since
# Rails::Application is an engine, the same configuration described here can be
# used in both.
#
# Be sure to look at the documentation of those specific classes for more information.
class Rails::Railtie
  include ::Rails::Initializable
  extend ::ActiveSupport::DescendantsTracker
  extend ::Rails::Initializable::ClassMethods

  # @return [Railtie] a new instance of Railtie
  #
  # source://railties/7.0.4/lib/rails/railtie.rb#246
  def initialize; end

  # This is used to create the <tt>config</tt> object on Railties, an instance of
  # Railtie::Configuration, that is used by Railties and Application to store
  # related configuration.
  #
  # source://railties/7.0.4/lib/rails/railtie.rb#263
  def config; end

  # source://railties/7.0.4/lib/rails/railtie.rb#256
  def configure(&block); end

  # source://railties/7.0.4/lib/rails/railtie.rb#252
  def inspect; end

  # source://railties/7.0.4/lib/rails/railtie.rb#244
  def railtie_name(*_arg0, **_arg1, &_arg2); end

  # source://railties/7.0.4/lib/rails/railtie.rb#267
  def railtie_namespace; end

  protected

  # source://railties/7.0.4/lib/rails/railtie.rb#272
  def run_console_blocks(app); end

  # source://railties/7.0.4/lib/rails/railtie.rb#276
  def run_generators_blocks(app); end

  # source://railties/7.0.4/lib/rails/railtie.rb#280
  def run_runner_blocks(app); end

  # source://railties/7.0.4/lib/rails/railtie.rb#289
  def run_server_blocks(app); end

  # source://railties/7.0.4/lib/rails/railtie.rb#284
  def run_tasks_blocks(app); end

  private

  # run `&block` in every registered block in `#register_block_for`
  #
  # source://railties/7.0.4/lib/rails/railtie.rb#295
  def each_registered_block(type, &block); end

  class << self
    # source://railties/7.0.4/lib/rails/railtie.rb#194
    def <=>(other); end

    # @return [Boolean]
    #
    # source://railties/7.0.4/lib/rails/railtie.rb#172
    def abstract_railtie?; end

    # source://railties/7.0.4/lib/rails/railtie.rb#146
    def config(*_arg0, **_arg1, &_arg2); end

    # Allows you to configure the railtie. This is the same method seen in
    # Railtie::Configurable, but this module is no longer required for all
    # subclasses of Railtie so we provide the class method here.
    #
    # source://railties/7.0.4/lib/rails/railtie.rb#190
    def configure(&block); end

    # source://railties/7.0.4/lib/rails/railtie.rb#156
    def console(&blk); end

    # source://railties/7.0.4/lib/rails/railtie.rb#164
    def generators(&blk); end

    # @private
    #
    # source://railties/7.0.4/lib/rails/railtie.rb#198
    def inherited(subclass); end

    # Since Rails::Railtie cannot be instantiated, any methods that call
    # +instance+ are intended to be called only on subclasses of a Railtie.
    #
    # source://railties/7.0.4/lib/rails/railtie.rb#183
    def instance; end

    # source://railties/7.0.4/lib/rails/railtie.rb#176
    def railtie_name(name = T.unsafe(nil)); end

    # source://railties/7.0.4/lib/rails/railtie.rb#152
    def rake_tasks(&blk); end

    # source://railties/7.0.4/lib/rails/railtie.rb#160
    def runner(&blk); end

    # source://railties/7.0.4/lib/rails/railtie.rb#168
    def server(&blk); end

    # source://railties/7.0.4/lib/rails/railtie.rb#148
    def subclasses; end

    protected

    # source://railties/7.0.4/lib/rails/railtie.rb#206
    def increment_load_index; end

    # Returns the value of attribute load_index.
    #
    # source://railties/7.0.4/lib/rails/railtie.rb#204
    def load_index; end

    private

    # source://railties/7.0.4/lib/rails/railtie.rb#212
    def generate_railtie_name(string); end

    # If the class method does not have a method, then send the method call
    # to the Railtie instance.
    #
    # source://railties/7.0.4/lib/rails/railtie.rb#224
    def method_missing(name, *args, **_arg2, &block); end

    # receives an instance variable identifier, set the variable value if is
    # blank and append given block to value, which will be used later in
    # `#each_registered_block(type, &block)`
    #
    # source://railties/7.0.4/lib/rails/railtie.rb#236
    def register_block_for(type, &blk); end

    # @return [Boolean]
    #
    # source://railties/7.0.4/lib/rails/railtie.rb#216
    def respond_to_missing?(name, _); end
  end
end

# source://railties/7.0.4/lib/rails/railtie.rb#142
Rails::Railtie::ABSTRACT_RAILTIES = T.let(T.unsafe(nil), Array)

class Rails::Railtie::Configuration
  # @return [Configuration] a new instance of Configuration
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#8
  def initialize; end

  # Last configurable block to run. Called after frameworks initialize.
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#70
  def after_initialize(&block); end

  # This allows you to modify application's generators from Railties.
  #
  # Values set on app_generators will become defaults for application, unless
  # application overwrites them.
  #
  # @yield [@@app_generators]
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#47
  def app_generators; end

  # This allows you to modify the application's middlewares from Engines.
  #
  # All operations you run on the app_middleware will be replayed on the
  # application once it is defined and the default_middlewares are
  # created
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#39
  def app_middleware; end

  # First configurable block to run. Called before any initializers are run.
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#54
  def before_configuration(&block); end

  # Third configurable block to run. Does not run if +config.eager_load+
  # set to false.
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#60
  def before_eager_load(&block); end

  # Second configurable block to run. Called before frameworks initialize.
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#65
  def before_initialize(&block); end

  # All namespaces that are eager loaded
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#18
  def eager_load_namespaces; end

  # @return [Boolean]
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#85
  def respond_to?(name, include_private = T.unsafe(nil)); end

  # Defines generic callbacks to run before #after_initialize. Useful for
  # Rails::Railtie subclasses.
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#81
  def to_prepare(&blk); end

  # Array of callbacks defined by #to_prepare.
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#75
  def to_prepare_blocks; end

  # Add directories that should be watched for change.
  # The key of the hashes should be directories and the values should
  # be an array of extensions to match in each directory.
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#30
  def watchable_dirs; end

  # Add files that should be watched for change.
  #
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#23
  def watchable_files; end

  private

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#90
  def method_missing(name, *args, &blk); end

  class << self
    # Expose the eager_load_namespaces at "module" level for convenience.
    #
    # source://railties/7.0.4/lib/rails/railtie/configuration.rb#13
    def eager_load_namespaces; end
  end
end
