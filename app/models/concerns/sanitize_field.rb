module SanitizeField
   
	extend ActiveSupport::Concern
	include ActionView::Helpers::SanitizeHelper

	included do
	  before_save :santize_string_fields
	end

	def santize_string_fields
	  sanitize_unwanted_replaces = {"&amp;" => "&", "%7B" => "{", "%7D" => "}"}
	  #white_list_sanitizer = Rails::Html::WhiteListSanitizer.new
	  #default_tags = Loofah::HTML5::WhiteList::ALLOWED_ELEMENTS_WITH_LIBXML2.add('table')
	  #default_attributes = Loofah::HTML5::WhiteList::ALLOWED_ATTRIBUTES
	  string_columns = self.class.columns.select {|c| self[c.name].instance_of? String }
	  string_columns.each do |column|
	    if self[column.name].present? && self.changes[column.name].present?
	      self[column.name] = sanitize self[column.name]&.html_safe#, tags: default_tags, attributes: default_attributes
	      sanitize_unwanted_replaces.each { |replaced_with, original| self[column.name].gsub!(replaced_with, original) }
	    end
	  end
	end
end