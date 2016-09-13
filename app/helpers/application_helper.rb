module ApplicationHelper
  def content_for_head
    begin
      tags = YAML::load_file('config/tags.yml')[controller_name][action_name]
    rescue Exception => e
    end
    head_tags = render_tags(tags) if tags.present?
    head_tags
  end

  def render_tags(tags)
    rendered_tags = "<title>#{tags['title']}</title> \n".html_safe if tags['title'].present?
    if tags['meta'].present?
      tags['meta'].each do |tag|
        rendered_tags += %Q{<meta name="#{tag[0]}" content="#{tag[1]}">\n}.html_safe
      end
    end
    rendered_tags
  end
end
