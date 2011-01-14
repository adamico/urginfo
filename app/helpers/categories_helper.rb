module CategoriesHelper
  def breadcrumb(category, with_self = true)
    if category.ancestors.blank?
      safe_concat(link_to_unless_current category.name, category) if with_self
    else
      links = []
      category.ancestors.each do |ancestor|
        links << link_to(ancestor.name, ancestor)
      end
      links << link_to_unless_current(category.name, category) if with_self
      safe_concat links.join(" &gt; ")
    end
  end
end
