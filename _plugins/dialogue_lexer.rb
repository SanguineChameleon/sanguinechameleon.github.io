Jekyll::Hooks.register :site, :pre_render do |site|
  require "rouge"

  class DialogueLexer < Rouge::RegexLexer
    tag "dialogue"

    Arrow = Rouge::Token.make_token "Arrow", "arrow"
    Wave = Rouge::Token.make_token "Wave", "wave"
    Star = Rouge::Token.make_token "Star", "star"

    state :root do
      rule /^>.*$/, Arrow
      rule /^~.*$/, Wave
      rule /^\*.*$/, Star
      rule /^.+$/, Text
      rule /\n/, Text
    end
  end
end