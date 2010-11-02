module InfosHelper
  def breadcrumb(info, with_self = true)
    unless info.ancestors.blank?
      links = []
      info.ancestors.each do |ancestor|
        links << link_to(ancestor.name, ancestor)
      end
      links << info.name if with_self
      safe_concat links.join(" &gt; ")
    end
  end
end
