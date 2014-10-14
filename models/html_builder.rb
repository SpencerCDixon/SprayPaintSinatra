require 'rouge'

class HtmlFormatter

  attr_reader :alert_finished, :buttons_finished, :formatter, :lexer

  def initialize
    @alert_finished = formatter.format(lexer.lex(alert))
    @buttons_finished = formatter.format(lexer.lex(buttons))
  end
  
  def formatter
    @formatter ||= Rouge::Formatters::HTML.new
  end

  def lexer
    @lexer ||= Rouge::Lexer.find_fancy("html", alert) || Rouge::Lexers::PlainText
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

  def buttons
    <<-eos
      <div class="row">
        <div class="col-6">
          <div class="btn default"> Home </div>
          <div class="btn med default"> Home </div>
          <div class="btn lrg default"> Home </div>
        </div>
      </div>

      <div class="row">
        <div class="col-6">
          <div class="btn success"> Sign in </div>
          <div class="btn med success"> Sign in </div>
          <div class="btn lrg success"> Sign in </div>
        </div>
      </div>

      <div class="row">
        <div class="col-6">
          <div class="btn info"> Sign out </div>
          <div class="btn med info"> Sign out </div>
          <div class="btn lrg info"> Sign out </div>
        </div>
      </div>

      <div class="row">
        <div class="col-6">
          <div class="btn warning"> Contact </div>
          <div class="btn med warning"> Contact </div>
          <div class="btn lrg warning"> Contact </div>
        </div>
      </div>

      <div class="row">
        <div class="col-6">
          <div class="btn danger"> About Us </div>
          <div class="btn med danger"> About Us </div>
          <div class="btn lrg danger"> About Us </div>
        </div>
      </div>
    eos
  end

end
