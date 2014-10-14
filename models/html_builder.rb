require 'rouge'
require 'pry'

class HtmlFormatter

  attr_reader :alert_finished, :formatter, :lexer
  def initialize
    binding.pry
    @alert_finished = formatter.format(lexer.lex(alert))
  end

  def alert
    <<-eos
    <div class="alert">
      Default message for you
    </div>

    <div class="alert success">
      Successful alert message goes here.
    </div>

    <div class="alert info">
      Congratulation on signing up for something useful
    </div>

    <div class="alert warning">
      Be careful this is your first warning
    </div>

    <div class="alert danger">
      Danger! You are doing something terribly wrong!
    </div>
    eos
  end

  def formatter
    @formatter ||= Rouge::Formatters::Html.new
  end

  def lexer
    @lexer ||= Rouge::Lexer.find_fancy("html", alert) || Rouge::Lexers::PlainText
  end
end
