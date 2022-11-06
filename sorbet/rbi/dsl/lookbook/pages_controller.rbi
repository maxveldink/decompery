# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Lookbook::PagesController`.
# Please instead update this file by running `bin/tapioca dsl Lookbook::PagesController`.

class Lookbook::PagesController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::Turbo::DriveHelper
    include ::Turbo::FramesHelper
    include ::Turbo::IncludesHelper
    include ::Turbo::StreamsHelper
    include ::ActionView::Helpers::CaptureHelper
    include ::ActionView::Helpers::OutputSafetyHelper
    include ::ActionView::Helpers::TagHelper
    include ::Turbo::Streams::ActionHelper
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::Importmap::ImportmapTagsHelper
    include ::ActionController::Base::HelperMethods
    include ::Lookbook::ApplicationHelper
    include ::Lookbook::ComponentHelper
    include ::Lookbook::OutputHelper
    include ::ActionDispatch::Routing::PolymorphicRoutes
    include ::ActionDispatch::Routing::UrlFor
    include ::Lookbook::Utils
    include ::Lookbook::PageHelper
    include ::Lookbook::PreviewHelper
    include ::Lookbook::ApplicationController::HelperMethods

    sig { returns(T.untyped) }
    def page_controller; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
