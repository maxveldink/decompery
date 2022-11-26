# typed: true

# workaround for https://github.com/Shopify/tapioca/issues/671

module ::Turbo::Streams::ActionHelper
end

class ApplicationRecord
  def self.broadcasts_to(*); end
  def broadcast_update_to(*); end
end
