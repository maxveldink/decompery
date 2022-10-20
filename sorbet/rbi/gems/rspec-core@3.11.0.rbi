# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rspec-core` gem.
# Please instead update this file by running `bin/tapioca gem rspec-core`.

# This module provides an internal implementation to track descendants
# which is faster than iterating through ObjectSpace.
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

    # @return [Boolean]
    #
    # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#77
    def native?; end

    # source://activesupport/7.0.4/lib/active_support/descendants_tracker.rb#58
    def subclasses(klass); end
  end
end

module Minitest
  class << self
    # source://minitest/5.16.3/lib/minitest.rb#173
    def __run(reporter, options); end

    # source://minitest/5.16.3/lib/minitest.rb#94
    def after_run(&block); end

    # source://minitest/5.16.3/lib/minitest.rb#66
    def autorun; end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def backtrace_filter; end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def backtrace_filter=(_arg0); end

    # source://minitest/5.16.3/lib/minitest.rb#18
    def cattr_accessor(name); end

    # source://minitest/5.16.3/lib/minitest.rb#1067
    def clock_time; end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def extensions; end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def extensions=(_arg0); end

    # source://minitest/5.16.3/lib/minitest.rb#264
    def filter_backtrace(bt); end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def info_signal; end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def info_signal=(_arg0); end

    # source://minitest/5.16.3/lib/minitest.rb#98
    def init_plugins(options); end

    # source://minitest/5.16.3/lib/minitest.rb#105
    def load_plugins; end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def parallel_executor; end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def parallel_executor=(_arg0); end

    # source://minitest/5.16.3/lib/minitest.rb#186
    def process_args(args = T.unsafe(nil)); end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def reporter; end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def reporter=(_arg0); end

    # source://minitest/5.16.3/lib/minitest.rb#140
    def run(args = T.unsafe(nil)); end

    # source://minitest/5.16.3/lib/minitest.rb#1058
    def run_one_method(klass, method_name); end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def seed; end

    # source://minitest/5.16.3/lib/minitest.rb#19
    def seed=(_arg0); end
  end
end

class Minitest::AbstractReporter
  include ::Mutex_m

  # source://mutex_m/0.1.1/mutex_m.rb#93
  def lock; end

  # source://mutex_m/0.1.1/mutex_m.rb#83
  def locked?; end

  # source://minitest/5.16.3/lib/minitest.rb#612
  def passed?; end

  # source://minitest/5.16.3/lib/minitest.rb#591
  def prerecord(klass, name); end

  # source://minitest/5.16.3/lib/minitest.rb#600
  def record(result); end

  # source://minitest/5.16.3/lib/minitest.rb#606
  def report; end

  # source://minitest/5.16.3/lib/minitest.rb#584
  def start; end

  # source://mutex_m/0.1.1/mutex_m.rb#78
  def synchronize(&block); end

  # source://mutex_m/0.1.1/mutex_m.rb#88
  def try_lock; end

  # source://mutex_m/0.1.1/mutex_m.rb#98
  def unlock; end
end

class Minitest::Assertion < ::Exception
  # source://minitest/5.16.3/lib/minitest.rb#904
  def error; end

  # source://minitest/5.16.3/lib/minitest.rb#911
  def location; end

  # source://minitest/5.16.3/lib/minitest.rb#920
  def result_code; end

  # source://minitest/5.16.3/lib/minitest.rb#924
  def result_label; end
end

module Minitest::Assertions
  # source://minitest/5.16.3/lib/minitest/assertions.rb#188
  def _synchronize; end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#178
  def assert(test, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#195
  def assert_empty(obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#216
  def assert_equal(exp, act, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#240
  def assert_in_delta(exp, act, delta = T.unsafe(nil), msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#252
  def assert_in_epsilon(exp, act, epsilon = T.unsafe(nil), msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#259
  def assert_includes(collection, obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#270
  def assert_instance_of(cls, obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#281
  def assert_kind_of(cls, obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#291
  def assert_match(matcher, obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#303
  def assert_nil(obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#313
  def assert_operator(o1, op, o2 = T.unsafe(nil), msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#331
  def assert_output(stdout = T.unsafe(nil), stderr = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#355
  def assert_path_exists(path, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#369
  def assert_predicate(o1, op, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#396
  def assert_raises(*exp); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#427
  def assert_respond_to(obj, meth, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#437
  def assert_same(exp, act, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#450
  def assert_send(send_ary, m = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#466
  def assert_silent; end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#475
  def assert_throws(sym, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#516
  def capture_io; end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#549
  def capture_subprocess_io; end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#59
  def diff(exp, act); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#581
  def exception_details(e, msg); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#597
  def fail_after(y, m, d, msg); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#604
  def flunk(msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#612
  def message(msg = T.unsafe(nil), ending = T.unsafe(nil), &default); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#129
  def mu_pp(obj); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#152
  def mu_pp_for_diff(obj); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#623
  def pass(_msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#630
  def refute(test, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#638
  def refute_empty(obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#649
  def refute_equal(exp, act, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#661
  def refute_in_delta(exp, act, delta = T.unsafe(nil), msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#673
  def refute_in_epsilon(a, b, epsilon = T.unsafe(nil), msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#680
  def refute_includes(collection, obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#691
  def refute_instance_of(cls, obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#701
  def refute_kind_of(cls, obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#709
  def refute_match(matcher, obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#719
  def refute_nil(obj, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#730
  def refute_operator(o1, op, o2 = T.unsafe(nil), msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#739
  def refute_path_exists(path, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#753
  def refute_predicate(o1, op, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#761
  def refute_respond_to(obj, meth, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#770
  def refute_same(exp, act, msg = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#783
  def skip(msg = T.unsafe(nil), bt = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#795
  def skip_until(y, m, d, msg); end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#804
  def skipped?; end

  # source://minitest/5.16.3/lib/minitest/assertions.rb#104
  def things_to_diff(exp, act); end

  class << self
    # source://minitest/5.16.3/lib/minitest/assertions.rb#29
    def diff; end

    # source://minitest/5.16.3/lib/minitest/assertions.rb#47
    def diff=(o); end
  end
end

# source://minitest/5.16.3/lib/minitest/assertions.rb#201
Minitest::Assertions::E = T.let(T.unsafe(nil), String)

# source://minitest/5.16.3/lib/minitest/assertions.rb#19
Minitest::Assertions::UNDEFINED = T.let(T.unsafe(nil), Object)

class Minitest::BacktraceFilter
  # source://minitest/5.16.3/lib/minitest.rb#1043
  def filter(bt); end
end

# source://minitest/5.16.3/lib/minitest.rb#1037
Minitest::BacktraceFilter::MT_RE = T.let(T.unsafe(nil), Regexp)

class Minitest::CompositeReporter < ::Minitest::AbstractReporter
  # source://minitest/5.16.3/lib/minitest.rb#858
  def initialize(*reporters); end

  # source://minitest/5.16.3/lib/minitest.rb#870
  def <<(reporter); end

  # source://minitest/5.16.3/lib/minitest.rb#863
  def io; end

  # source://minitest/5.16.3/lib/minitest.rb#874
  def passed?; end

  # source://minitest/5.16.3/lib/minitest.rb#882
  def prerecord(klass, name); end

  # source://minitest/5.16.3/lib/minitest.rb#889
  def record(result); end

  # source://minitest/5.16.3/lib/minitest.rb#895
  def report; end

  # source://minitest/5.16.3/lib/minitest.rb#856
  def reporters; end

  # source://minitest/5.16.3/lib/minitest.rb#856
  def reporters=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#878
  def start; end
end

module Minitest::Guard
  # source://minitest/5.16.3/lib/minitest.rb#984
  def jruby?(platform = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest.rb#991
  def maglev?(platform = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest.rb#1001
  def mri?(platform = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest.rb#1008
  def osx?(platform = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest.rb#1015
  def rubinius?(platform = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest.rb#1025
  def windows?(platform = T.unsafe(nil)); end
end

module Minitest::Parallel; end

class Minitest::Parallel::Executor
  # source://minitest/5.16.3/lib/minitest/parallel.rb#17
  def initialize(size); end

  # source://minitest/5.16.3/lib/minitest/parallel.rb#43
  def <<(work); end

  # source://minitest/5.16.3/lib/minitest/parallel.rb#50
  def shutdown; end

  # source://minitest/5.16.3/lib/minitest/parallel.rb#12
  def size; end

  # source://minitest/5.16.3/lib/minitest/parallel.rb#26
  def start; end
end

module Minitest::Parallel::Test
  # source://minitest/5.16.3/lib/minitest/parallel.rb#57
  def _synchronize; end
end

module Minitest::Parallel::Test::ClassMethods
  # source://minitest/5.16.3/lib/minitest/parallel.rb#60
  def run_one_method(klass, method_name, reporter); end

  # source://minitest/5.16.3/lib/minitest/parallel.rb#64
  def test_order; end
end

class Minitest::ProgressReporter < ::Minitest::Reporter
  # source://minitest/5.16.3/lib/minitest.rb#644
  def prerecord(klass, name); end

  # source://minitest/5.16.3/lib/minitest.rb#651
  def record(result); end
end

module Minitest::Reportable
  # source://minitest/5.16.3/lib/minitest.rb#495
  def class_name; end

  # source://minitest/5.16.3/lib/minitest.rb#516
  def error?; end

  # source://minitest/5.16.3/lib/minitest.rb#490
  def location; end

  # source://minitest/5.16.3/lib/minitest.rb#482
  def passed?; end

  # source://minitest/5.16.3/lib/minitest.rb#502
  def result_code; end

  # source://minitest/5.16.3/lib/minitest.rb#509
  def skipped?; end
end

class Minitest::Reporter < ::Minitest::AbstractReporter
  # source://minitest/5.16.3/lib/minitest.rb#628
  def initialize(io = T.unsafe(nil), options = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest.rb#621
  def io; end

  # source://minitest/5.16.3/lib/minitest.rb#621
  def io=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#626
  def options; end

  # source://minitest/5.16.3/lib/minitest.rb#626
  def options=(_arg0); end
end

class Minitest::Result < ::Minitest::Runnable
  include ::Minitest::Reportable

  # source://minitest/5.16.3/lib/minitest.rb#561
  def class_name; end

  # source://minitest/5.16.3/lib/minitest.rb#537
  def klass; end

  # source://minitest/5.16.3/lib/minitest.rb#537
  def klass=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#542
  def source_location; end

  # source://minitest/5.16.3/lib/minitest.rb#542
  def source_location=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#565
  def to_s; end

  class << self
    # source://minitest/5.16.3/lib/minitest.rb#547
    def from(runnable); end
  end
end

class Minitest::Runnable
  # source://minitest/5.16.3/lib/minitest.rb#431
  def initialize(name); end

  # source://minitest/5.16.3/lib/minitest.rb#281
  def assertions; end

  # source://minitest/5.16.3/lib/minitest.rb#281
  def assertions=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#427
  def failure; end

  # source://minitest/5.16.3/lib/minitest.rb#286
  def failures; end

  # source://minitest/5.16.3/lib/minitest.rb#286
  def failures=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#413
  def marshal_dump; end

  # source://minitest/5.16.3/lib/minitest.rb#423
  def marshal_load(ary); end

  # source://minitest/5.16.3/lib/minitest.rb#304
  def name; end

  # source://minitest/5.16.3/lib/minitest.rb#311
  def name=(o); end

  # source://minitest/5.16.3/lib/minitest.rb#450
  def passed?; end

  # source://minitest/5.16.3/lib/minitest.rb#459
  def result_code; end

  # source://minitest/5.16.3/lib/minitest.rb#440
  def run; end

  # source://minitest/5.16.3/lib/minitest.rb#466
  def skipped?; end

  # source://minitest/5.16.3/lib/minitest.rb#291
  def time; end

  # source://minitest/5.16.3/lib/minitest.rb#291
  def time=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#293
  def time_it; end

  class << self
    # source://minitest/5.16.3/lib/minitest.rb#1077
    def inherited(klass); end

    # source://minitest/5.16.3/lib/minitest.rb#318
    def methods_matching(re); end

    # source://minitest/5.16.3/lib/minitest.rb#383
    def on_signal(name, action); end

    # source://minitest/5.16.3/lib/minitest.rb#322
    def reset; end

    # source://minitest/5.16.3/lib/minitest.rb#333
    def run(reporter, options = T.unsafe(nil)); end

    # source://minitest/5.16.3/lib/minitest.rb#363
    def run_one_method(klass, method_name, reporter); end

    # source://minitest/5.16.3/lib/minitest.rb#400
    def runnable_methods; end

    # source://minitest/5.16.3/lib/minitest.rb#407
    def runnables; end

    # source://minitest/5.16.3/lib/minitest.rb#368
    def with_info_handler(reporter, &block); end
  end
end

# source://minitest/5.16.3/lib/minitest.rb#381
Minitest::Runnable::SIGNALS = T.let(T.unsafe(nil), Hash)

class Minitest::Skip < ::Minitest::Assertion
  # source://minitest/5.16.3/lib/minitest.rb#933
  def result_label; end
end

class Minitest::StatisticsReporter < ::Minitest::Reporter
  # source://minitest/5.16.3/lib/minitest.rb#723
  def initialize(io = T.unsafe(nil), options = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest.rb#683
  def assertions; end

  # source://minitest/5.16.3/lib/minitest.rb#683
  def assertions=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#688
  def count; end

  # source://minitest/5.16.3/lib/minitest.rb#688
  def count=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#716
  def errors; end

  # source://minitest/5.16.3/lib/minitest.rb#716
  def errors=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#711
  def failures; end

  # source://minitest/5.16.3/lib/minitest.rb#711
  def failures=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#736
  def passed?; end

  # source://minitest/5.16.3/lib/minitest.rb#744
  def record(result); end

  # source://minitest/5.16.3/lib/minitest.rb#754
  def report; end

  # source://minitest/5.16.3/lib/minitest.rb#693
  def results; end

  # source://minitest/5.16.3/lib/minitest.rb#693
  def results=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#721
  def skips; end

  # source://minitest/5.16.3/lib/minitest.rb#721
  def skips=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#740
  def start; end

  # source://minitest/5.16.3/lib/minitest.rb#700
  def start_time; end

  # source://minitest/5.16.3/lib/minitest.rb#700
  def start_time=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#706
  def total_time; end

  # source://minitest/5.16.3/lib/minitest.rb#706
  def total_time=(_arg0); end
end

class Minitest::SummaryReporter < ::Minitest::StatisticsReporter
  # source://minitest/5.16.3/lib/minitest.rb#809
  def aggregated_results(io); end

  # source://minitest/5.16.3/lib/minitest.rb#777
  def old_sync; end

  # source://minitest/5.16.3/lib/minitest.rb#777
  def old_sync=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#792
  def report; end

  # source://minitest/5.16.3/lib/minitest.rb#780
  def start; end

  # source://minitest/5.16.3/lib/minitest.rb#804
  def statistics; end

  # source://minitest/5.16.3/lib/minitest.rb#829
  def summary; end

  # source://minitest/5.16.3/lib/minitest.rb#776
  def sync; end

  # source://minitest/5.16.3/lib/minitest.rb#776
  def sync=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#825
  def to_s; end

  private

  # source://minitest/5.16.3/lib/minitest.rb#843
  def binary_string; end
end

class Minitest::Test < ::Minitest::Runnable
  include ::Minitest::Assertions
  include ::Minitest::Reportable
  include ::Minitest::Test::LifecycleHooks
  include ::Minitest::Guard
  extend ::Minitest::Guard

  # source://minitest/5.16.3/lib/minitest/test.rb#194
  def capture_exceptions; end

  # source://minitest/5.16.3/lib/minitest/test.rb#15
  def class_name; end

  # source://minitest/5.16.3/lib/minitest/test.rb#211
  def neuter_exception(e); end

  # source://minitest/5.16.3/lib/minitest/test.rb#222
  def new_exception(klass, msg, bt, kill = T.unsafe(nil)); end

  # source://minitest/5.16.3/lib/minitest/test.rb#92
  def run; end

  # source://minitest/5.16.3/lib/minitest/test.rb#204
  def sanitize_exception(e); end

  # source://minitest/5.16.3/lib/minitest/test.rb#236
  def with_info_handler(&block); end

  class << self
    # source://minitest/5.16.3/lib/minitest/test.rb#31
    def i_suck_and_my_tests_are_order_dependent!; end

    # source://minitest/5.16.3/lib/minitest/test.rb#22
    def io_lock; end

    # source://minitest/5.16.3/lib/minitest/test.rb#22
    def io_lock=(_arg0); end

    # source://minitest/5.16.3/lib/minitest/test.rb#44
    def make_my_diffs_pretty!; end

    # source://minitest/5.16.3/lib/minitest/test.rb#55
    def parallelize_me!; end

    # source://minitest/5.16.3/lib/minitest/test.rb#65
    def runnable_methods; end

    # source://minitest/5.16.3/lib/minitest/test.rb#83
    def test_order; end
  end
end

module Minitest::Test::LifecycleHooks
  # source://minitest/5.16.3/lib/minitest/test.rb#167
  def after_setup; end

  # source://minitest/5.16.3/lib/minitest/test.rb#191
  def after_teardown; end

  # source://minitest/5.16.3/lib/minitest/test.rb#152
  def before_setup; end

  # source://minitest/5.16.3/lib/minitest/test.rb#176
  def before_teardown; end

  # source://minitest/5.16.3/lib/minitest/test.rb#158
  def setup; end

  # source://minitest/5.16.3/lib/minitest/test.rb#182
  def teardown; end
end

# source://minitest/5.16.3/lib/minitest/test.rb#19
Minitest::Test::PASSTHROUGH_EXCEPTIONS = T.let(T.unsafe(nil), Array)

# source://minitest/5.16.3/lib/minitest/test.rb#87
Minitest::Test::TEARDOWN_METHODS = T.let(T.unsafe(nil), Array)

class Minitest::UnexpectedError < ::Minitest::Assertion
  # source://minitest/5.16.3/lib/minitest.rb#945
  def initialize(error); end

  # source://minitest/5.16.3/lib/minitest.rb#950
  def backtrace; end

  # source://minitest/5.16.3/lib/minitest.rb#943
  def error; end

  # source://minitest/5.16.3/lib/minitest.rb#943
  def error=(_arg0); end

  # source://minitest/5.16.3/lib/minitest.rb#954
  def message; end

  # source://minitest/5.16.3/lib/minitest.rb#959
  def result_label; end
end

class Minitest::Unit
  class << self
    # source://minitest/5.16.3/lib/minitest/unit.rb#36
    def after_tests(&b); end

    # source://minitest/5.16.3/lib/minitest/unit.rb#30
    def autorun; end
  end
end

class Minitest::Unit::TestCase < ::Minitest::Test
  class << self
    # source://minitest/5.16.3/lib/minitest/unit.rb#23
    def inherited(klass); end
  end
end

# source://minitest/5.16.3/lib/minitest/unit.rb#21
Minitest::Unit::VERSION = T.let(T.unsafe(nil), String)

# source://minitest/5.16.3/lib/minitest.rb#12
Minitest::VERSION = T.let(T.unsafe(nil), String)

# Namespace for all core RSpec code.
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