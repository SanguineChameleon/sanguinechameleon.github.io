Jekyll::Hooks.register :site, :pre_render do |site|
  require "json"

  Dir.glob(File.join(site.source, "**/*.json")).each do |file|
    begin
      JSON.parse(File.read(file), allow_duplicate_key: false)
    end
  end
end