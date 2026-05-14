module Iquest
  module SimpleTable
    module TableHelper
      def simple_table_for(collection, **opts)
        opts[:html] ||= {}
        opts[:html][:class] ||= ['filter-table']
        opts[:html][:class] << ' ' if opts[:html][:class].is_a? String
        opts[:responsive] ||= true

        builder = SimpleTable::TableBuilder.new self, collection, opts

        yield builder
        builder.to_s
      end
    end
  end
end
