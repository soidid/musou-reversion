module ViewHelpers

  # yaml data
  def data
    d||=YAML.load_file(File.join(File.dirname(__FILE__), 'data.yml'))
    return d
  end

  # nav li active link
  def nav_link_to(name, href, options={})
    if href == request.path.gsub(/[^\/]+$/, '')
       active = "active"
    end
    content_tag(:span, 
                link_to(content_tag(:span, '', :class => 'icon')+content_tag(:span, name,:class => nil), href, options),
                :class => active )
  end

end
