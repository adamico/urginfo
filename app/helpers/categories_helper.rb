module CategoriesHelper
  def breadcrumb(category, with_self = true)
    unless category.ancestors.blank?
      links = []
      category.ancestors.each do |ancestor|
        links << link_to(ancestor.name, ancestor)
      end
      links << category.name if with_self
      safe_concat links.join(" &gt; ")
    end
  end
end
