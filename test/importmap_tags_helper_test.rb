require "test_helper"

class Importmap::ImportmapTagsHelperTest < ActionView::TestCase
  test "javascript_inline_importmap_tag" do
    assert_match \
      %r{<script type="importmap" data-turbo-track="reload">{"imports":{"md5":"https://cdn.skypack.dev/md5".*}}</script>},
      javascript_inline_importmap_tag
  end

  test "javascript_importmap_module_preload_tags" do
    assert_dom_equal \
      %(<link rel="modulepreload" href="https://cdn.skypack.dev/md5">),
      javascript_importmap_module_preload_tags
  end
end
