# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `propshaft` gem.
# Please instead update this file by running `bin/tapioca gem propshaft`.

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

module Propshaft
  # source://propshaft//lib/propshaft.rb#6
  def logger; end

  # source://propshaft//lib/propshaft.rb#6
  def logger=(val); end

  class << self
    # source://propshaft//lib/propshaft.rb#6
    def logger; end

    # source://propshaft//lib/propshaft.rb#6
    def logger=(val); end
  end
end

class Propshaft::Assembly
  # @return [Assembly] a new instance of Assembly
  #
  # source://propshaft//lib/propshaft/assembly.rb#13
  def initialize(config); end

  # source://propshaft//lib/propshaft/assembly.rb#38
  def compilers; end

  # Returns the value of attribute config.
  #
  # source://propshaft//lib/propshaft/assembly.rb#11
  def config; end

  # source://propshaft//lib/propshaft/assembly.rb#17
  def load_path; end

  # source://propshaft//lib/propshaft/assembly.rb#33
  def processor; end

  # source://propshaft//lib/propshaft/assembly.rb#21
  def resolver; end

  # source://propshaft//lib/propshaft/assembly.rb#47
  def reveal(path_type = T.unsafe(nil)); end

  # source://propshaft//lib/propshaft/assembly.rb#29
  def server; end

  private

  # source://propshaft//lib/propshaft/assembly.rb#56
  def manifest_path; end
end

class Propshaft::Asset
  # @return [Asset] a new instance of Asset
  #
  # source://propshaft//lib/propshaft/asset.rb#7
  def initialize(path, logical_path:, version: T.unsafe(nil)); end

  # source://propshaft//lib/propshaft/asset.rb#39
  def ==(other_asset); end

  # source://propshaft//lib/propshaft/asset.rb#11
  def content; end

  # source://propshaft//lib/propshaft/asset.rb#15
  def content_type; end

  # source://propshaft//lib/propshaft/asset.rb#23
  def digest; end

  # source://propshaft//lib/propshaft/asset.rb#27
  def digested_path; end

  # @return [Boolean]
  #
  # source://propshaft//lib/propshaft/asset.rb#35
  def fresh?(digest); end

  # source://propshaft//lib/propshaft/asset.rb#19
  def length; end

  # Returns the value of attribute logical_path.
  #
  # source://propshaft//lib/propshaft/asset.rb#5
  def logical_path; end

  # Returns the value of attribute path.
  #
  # source://propshaft//lib/propshaft/asset.rb#5
  def path; end

  # Returns the value of attribute version.
  #
  # source://propshaft//lib/propshaft/asset.rb#5
  def version; end

  private

  # @return [Boolean]
  #
  # source://propshaft//lib/propshaft/asset.rb#44
  def already_digested?; end
end

class Propshaft::Compilers
  # @return [Compilers] a new instance of Compilers
  #
  # source://propshaft//lib/propshaft/compilers.rb#4
  def initialize(assembly); end

  # @return [Boolean]
  #
  # source://propshaft//lib/propshaft/compilers.rb#14
  def any?; end

  # Returns the value of attribute assembly.
  #
  # source://propshaft//lib/propshaft/compilers.rb#2
  def assembly; end

  # @return [Boolean]
  #
  # source://propshaft//lib/propshaft/compilers.rb#18
  def compilable?(asset); end

  # source://propshaft//lib/propshaft/compilers.rb#22
  def compile(asset); end

  # source://propshaft//lib/propshaft/compilers.rb#9
  def register(mime_type, klass); end

  # Returns the value of attribute registrations.
  #
  # source://propshaft//lib/propshaft/compilers.rb#2
  def registrations; end
end

class Propshaft::Compilers::CssAssetUrls
  # @return [CssAssetUrls] a new instance of CssAssetUrls
  #
  # source://propshaft//lib/propshaft/compilers/css_asset_urls.rb#8
  def initialize(assembly); end

  # Returns the value of attribute assembly.
  #
  # source://propshaft//lib/propshaft/compilers/css_asset_urls.rb#4
  def assembly; end

  # source://propshaft//lib/propshaft/compilers/css_asset_urls.rb#12
  def compile(logical_path, input); end

  private

  # source://propshaft//lib/propshaft/compilers/css_asset_urls.rb#27
  def asset_url(resolved_path, logical_path, pattern); end

  # source://propshaft//lib/propshaft/compilers/css_asset_urls.rb#17
  def resolve_path(directory, filename); end
end

# source://propshaft//lib/propshaft/compilers/css_asset_urls.rb#6
Propshaft::Compilers::CssAssetUrls::ASSET_URL_PATTERN = T.let(T.unsafe(nil), Regexp)

class Propshaft::Compilers::SourceMappingUrls
  # @return [SourceMappingUrls] a new instance of SourceMappingUrls
  #
  # source://propshaft//lib/propshaft/compilers/source_mapping_urls.rb#8
  def initialize(assembly); end

  # Returns the value of attribute assembly.
  #
  # source://propshaft//lib/propshaft/compilers/source_mapping_urls.rb#4
  def assembly; end

  # source://propshaft//lib/propshaft/compilers/source_mapping_urls.rb#12
  def compile(logical_path, input); end

  private

  # source://propshaft//lib/propshaft/compilers/source_mapping_urls.rb#17
  def asset_path(source_mapping_url, logical_path); end

  # source://propshaft//lib/propshaft/compilers/source_mapping_urls.rb#25
  def source_mapping_url(resolved_path, comment); end
end

# source://propshaft//lib/propshaft/compilers/source_mapping_urls.rb#6
Propshaft::Compilers::SourceMappingUrls::SOURCE_MAPPING_PATTERN = T.let(T.unsafe(nil), Regexp)

# Generic base class for all Propshaft exceptions.
class Propshaft::Error < ::StandardError; end

module Propshaft::Helper
  # source://propshaft//lib/propshaft/helper.rb#3
  def compute_asset_path(path, options = T.unsafe(nil)); end
end

class Propshaft::LoadPath
  # @return [LoadPath] a new instance of LoadPath
  #
  # source://propshaft//lib/propshaft/load_path.rb#6
  def initialize(paths = T.unsafe(nil), version: T.unsafe(nil)); end

  # source://propshaft//lib/propshaft/load_path.rb#15
  def assets(content_types: T.unsafe(nil)); end

  # Returns a ActiveSupport::FileUpdateChecker object configured to clear the cache of the load_path
  # when the directories passed during its initialization have changes. This is used in development
  # and test to ensure the map caches are reset when javascript files are changed.
  #
  # source://propshaft//lib/propshaft/load_path.rb#34
  def cache_sweeper; end

  # source://propshaft//lib/propshaft/load_path.rb#11
  def find(asset_name); end

  # source://propshaft//lib/propshaft/load_path.rb#23
  def manifest; end

  # Returns the value of attribute paths.
  #
  # source://propshaft//lib/propshaft/load_path.rb#4
  def paths; end

  # Returns the value of attribute version.
  #
  # source://propshaft//lib/propshaft/load_path.rb#4
  def version; end

  private

  # source://propshaft//lib/propshaft/load_path.rb#57
  def all_files_from_tree(path); end

  # source://propshaft//lib/propshaft/load_path.rb#46
  def assets_by_path; end

  # source://propshaft//lib/propshaft/load_path.rb#65
  def clear_cache; end

  # source://propshaft//lib/propshaft/load_path.rb#69
  def dedup(paths); end

  # source://propshaft//lib/propshaft/load_path.rb#61
  def without_dotfiles(files); end
end

# Raised when LoadPath cannot find the requested asset
class Propshaft::MissingAssetError < ::Propshaft::Error
  # @return [MissingAssetError] a new instance of MissingAssetError
  #
  # source://propshaft//lib/propshaft/errors.rb#9
  def initialize(path); end

  # source://propshaft//lib/propshaft/errors.rb#14
  def message; end
end

class Propshaft::OutputPath
  # @return [OutputPath] a new instance of OutputPath
  #
  # source://propshaft//lib/propshaft/output_path.rb#6
  def initialize(path, manifest); end

  # source://propshaft//lib/propshaft/output_path.rb#10
  def clean(count, age); end

  # source://propshaft//lib/propshaft/output_path.rb#25
  def files; end

  # Returns the value of attribute manifest.
  #
  # source://propshaft//lib/propshaft/output_path.rb#4
  def manifest; end

  # Returns the value of attribute path.
  #
  # source://propshaft//lib/propshaft/output_path.rb#4
  def path; end

  private

  # source://propshaft//lib/propshaft/output_path.rb#51
  def all_files_from_tree(path); end

  # source://propshaft//lib/propshaft/output_path.rb#55
  def extract_path_and_digest(digested_path); end

  # source://propshaft//lib/propshaft/output_path.rb#41
  def fresh_version_within_limit(mtime, count, expires_at:, limit:); end

  # source://propshaft//lib/propshaft/output_path.rb#46
  def remove(path); end
end

class Propshaft::Processor
  # @return [Processor] a new instance of Processor
  #
  # source://propshaft//lib/propshaft/processor.rb#8
  def initialize(load_path:, output_path:, compilers:); end

  # source://propshaft//lib/propshaft/processor.rb#23
  def clean; end

  # source://propshaft//lib/propshaft/processor.rb#19
  def clobber; end

  # Returns the value of attribute compilers.
  #
  # source://propshaft//lib/propshaft/processor.rb#6
  def compilers; end

  # Returns the value of attribute load_path.
  #
  # source://propshaft//lib/propshaft/processor.rb#6
  def load_path; end

  # Returns the value of attribute output_path.
  #
  # source://propshaft//lib/propshaft/processor.rb#6
  def output_path; end

  # source://propshaft//lib/propshaft/processor.rb#13
  def process; end

  private

  # source://propshaft//lib/propshaft/processor.rb#54
  def compile_asset(asset); end

  # source://propshaft//lib/propshaft/processor.rb#65
  def copy_asset(asset); end

  # source://propshaft//lib/propshaft/processor.rb#28
  def ensure_output_path_exists; end

  # source://propshaft//lib/propshaft/processor.rb#50
  def output_asset(asset); end

  # source://propshaft//lib/propshaft/processor.rb#40
  def output_assets; end

  # source://propshaft//lib/propshaft/processor.rb#33
  def write_manifest; end
end

# source://propshaft//lib/propshaft/processor.rb#4
Propshaft::Processor::MANIFEST_FILENAME = T.let(T.unsafe(nil), String)

class Propshaft::Railtie < ::Rails::Railtie; end
module Propshaft::Resolver; end

class Propshaft::Resolver::Dynamic
  # @return [Dynamic] a new instance of Dynamic
  #
  # source://propshaft//lib/propshaft/resolver/dynamic.rb#5
  def initialize(load_path:, prefix:); end

  # Returns the value of attribute load_path.
  #
  # source://propshaft//lib/propshaft/resolver/dynamic.rb#3
  def load_path; end

  # Returns the value of attribute prefix.
  #
  # source://propshaft//lib/propshaft/resolver/dynamic.rb#3
  def prefix; end

  # source://propshaft//lib/propshaft/resolver/dynamic.rb#15
  def read(logical_path); end

  # source://propshaft//lib/propshaft/resolver/dynamic.rb#9
  def resolve(logical_path); end
end

class Propshaft::Resolver::Static
  # @return [Static] a new instance of Static
  #
  # source://propshaft//lib/propshaft/resolver/static.rb#5
  def initialize(manifest_path:, prefix:); end

  # Returns the value of attribute manifest_path.
  #
  # source://propshaft//lib/propshaft/resolver/static.rb#3
  def manifest_path; end

  # Returns the value of attribute prefix.
  #
  # source://propshaft//lib/propshaft/resolver/static.rb#3
  def prefix; end

  # source://propshaft//lib/propshaft/resolver/static.rb#15
  def read(logical_path); end

  # source://propshaft//lib/propshaft/resolver/static.rb#9
  def resolve(logical_path); end

  private

  # source://propshaft//lib/propshaft/resolver/static.rb#22
  def parsed_manifest; end
end

class Propshaft::Server
  # @return [Server] a new instance of Server
  #
  # source://propshaft//lib/propshaft/server.rb#4
  def initialize(assembly); end

  # source://propshaft//lib/propshaft/server.rb#8
  def call(env); end

  # source://propshaft//lib/propshaft/server.rb#30
  def inspect; end

  private

  # source://propshaft//lib/propshaft/server.rb#35
  def extract_path_and_digest(env); end
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
  # source://railties/7.0.4/lib/rails/initializable.rb#14
  def initialize(name, context, options, &block); end

  # source://railties/7.0.4/lib/rails/initializable.rb#23
  def after; end

  # source://railties/7.0.4/lib/rails/initializable.rb#19
  def before; end

  # source://railties/7.0.4/lib/rails/initializable.rb#27
  def belongs_to?(group); end

  # source://railties/7.0.4/lib/rails/initializable.rb#35
  def bind(context); end

  # source://railties/7.0.4/lib/rails/initializable.rb#12
  def block; end

  # source://railties/7.0.4/lib/rails/initializable.rb#40
  def context_class; end

  # source://railties/7.0.4/lib/rails/initializable.rb#12
  def name; end

  # source://railties/7.0.4/lib/rails/initializable.rb#31
  def run(*args); end
end

class Rails::Railtie
  include ::Rails::Initializable
  extend ::ActiveSupport::DescendantsTracker
  extend ::Rails::Initializable::ClassMethods

  # source://railties/7.0.4/lib/rails/railtie.rb#246
  def initialize; end

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

  # source://railties/7.0.4/lib/rails/railtie.rb#295
  def each_registered_block(type, &block); end

  class << self
    # source://railties/7.0.4/lib/rails/railtie.rb#194
    def <=>(other); end

    # source://railties/7.0.4/lib/rails/railtie.rb#172
    def abstract_railtie?; end

    # source://railties/7.0.4/lib/rails/railtie.rb#146
    def config(*_arg0, **_arg1, &_arg2); end

    # source://railties/7.0.4/lib/rails/railtie.rb#190
    def configure(&block); end

    # source://railties/7.0.4/lib/rails/railtie.rb#156
    def console(&blk); end

    # source://railties/7.0.4/lib/rails/railtie.rb#164
    def generators(&blk); end

    # source://railties/7.0.4/lib/rails/railtie.rb#198
    def inherited(subclass); end

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

    # source://railties/7.0.4/lib/rails/railtie.rb#204
    def load_index; end

    private

    # source://railties/7.0.4/lib/rails/railtie.rb#212
    def generate_railtie_name(string); end

    # source://railties/7.0.4/lib/rails/railtie.rb#224
    def method_missing(name, *args, **_arg2, &block); end

    # source://railties/7.0.4/lib/rails/railtie.rb#236
    def register_block_for(type, &blk); end

    # source://railties/7.0.4/lib/rails/railtie.rb#216
    def respond_to_missing?(name, _); end
  end
end

# source://railties/7.0.4/lib/rails/railtie.rb#142
Rails::Railtie::ABSTRACT_RAILTIES = T.let(T.unsafe(nil), Array)

class Rails::Railtie::Configuration
  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#8
  def initialize; end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#70
  def after_initialize(&block); end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#47
  def app_generators; end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#39
  def app_middleware; end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#54
  def before_configuration(&block); end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#60
  def before_eager_load(&block); end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#65
  def before_initialize(&block); end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#18
  def eager_load_namespaces; end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#85
  def respond_to?(name, include_private = T.unsafe(nil)); end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#81
  def to_prepare(&blk); end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#75
  def to_prepare_blocks; end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#30
  def watchable_dirs; end

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#23
  def watchable_files; end

  private

  # source://railties/7.0.4/lib/rails/railtie/configuration.rb#90
  def method_missing(name, *args, &blk); end

  class << self
    # source://railties/7.0.4/lib/rails/railtie/configuration.rb#13
    def eager_load_namespaces; end
  end
end
