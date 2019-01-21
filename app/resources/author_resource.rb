class AuthorResource < JSONAPI::Resource
  attributes :first, :last
  filter :query

  def self.apply_filter(records, filter, value, options)
    case filter
      when :query
        records.where({last: value.first})
      else 
        super
    end
  end
end