# frozen_string_literal: true

class PostVersion < PaperTrail::Version
  self.table_name = "post_versions"

  # Hack to simulate a version class that doesn't have the optional `item_subtype` column. BEGIN >>>
  def item_subtype
    raise "This method should not be called!"
  end

  # rubocop:disable Style/OptionalBooleanParameter
  def respond_to?(method_name, include_private = false)
    # rubocop:enable Style/OptionalBooleanParameter
    if method_name.to_sym == :item_subtype
      false
    else
      super
    end
  end
  # <<< END Hack to simulate a version class that doesn't have the optional `item_subtype` column.
end
