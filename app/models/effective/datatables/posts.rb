if defined?(EffectiveDatatables)
  module Effective
    module Datatables
      class Posts < Effective::Datatable
        table_column :id

        table_column :title
        table_column :category, :filter => {:type => :select, :values => EffectivePosts.categories }

        table_column :draft
        table_column :published_at

        table_column :actions, :sortable => false, :filter => false, :partial => '/admin/posts/actions'

        def collection
          Effective::Post.all
        end
      end
    end
  end
end