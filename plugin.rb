# frozen_string_literal: true

# name: DiscourseBasicEditor
# about: This plugin adds a basic editor to discourse for beginner users.
# version: 0.1
# authors: spirobel
# url: https://github.com/spirobel

register_asset 'stylesheets/common/discourse-basic-editor.scss'
register_asset 'stylesheets/desktop/discourse-basic-editor.scss', :desktop
register_asset 'stylesheets/mobile/discourse-basic-editor.scss', :mobile

enabled_site_setting :discourse_basic_editor_enabled

PLUGIN_NAME ||= 'DiscourseBasicEditor'

load File.expand_path('lib/discourse-basic-editor/engine.rb', __dir__)

after_initialize do
  # https://github.com/discourse/discourse/blob/master/lib/plugin/instance.rb
end