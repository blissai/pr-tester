# Complex test class
class Complex

  private

  def get_cost_per_line(lang, cost_type = :all)
    if lang == 'SUM'
      0
    elsif lang =~ /HTML/i
      front_end(cost_type) ? html : 0
    elsif lang =~ /SASS/i
      styling(cost_type) ? html : 0
    elsif lang =~ /HAML/i
      front_end(cost_type) ? html : 0
    elsif lang =~ /Slim/i
      front_end(cost_type) ? html : 0
    elsif lang =~ /Javascript|coffee/i
      front_end(cost_type) ? javascript : 0
    elsif lang =~ /css/i
      styling(cost_type) ? css : 0
    elsif lang =~ /perl/i
      back_end(cost_type) ? perl : 0
    elsif lang =~ /python/i
      back_end(cost_type) ? python : 0
    elsif lang =~ /ASP/i
      back_end(cost_type) ? javascript : 0
    elsif lang =~ /Razor/i
      back_end(cost_type) ? html : 0
    elsif lang =~ /PowerShell/i
      back_end(cost_type) ? css : 0
    elsif lang =~ /LESS/i
      styling(cost_type) ? css : 0
    elsif lang =~ /php/i
      back_end(cost_type) ? php : 0
    elsif lang =~ /ruby$/i
      back_end(cost_type) ? ruby : 0
    elsif lang =~ /erlang/i
      back_end(cost_type) ? erlang : 0
    elsif lang =~ /goovy/i
      back_end(cost_type) ? goovy : 0
    elsif lang =~ /haskell/i
      back_end(cost_type) ? haskell : 0
    elsif lang =~ /java/i
      back_end(cost_type) ? java : 0
    elsif lang =~ /scala/i
      back_end(cost_type) ? scala : 0
    elsif lang =~ /swift/i
      back_end(cost_type) ? swift : 0
    elsif lang =~ /clojure/i
      back_end(cost_type) ? vb : 0
    elsif lang =~ /shell/i
      0
    elsif lang =~ /go/i
      back_end(cost_type) ? go : 0
    elsif lang =~ /r/i
      back_end(cost_type) ? r : 0
    elsif lang =~ /c/i
      back_end(cost_type) ? c : 0
    else
      0
    end
  end

  def back_end(cost_type)
    (cost_type == :all) || (cost_type == :backend)
  end

  def front_end(cost_type)
    (cost_type == :all) || (cost_type == :frontend)
  end

  def styling(cost_type)
    (cost_type == :all) || (cost_type == :style)
  end
end
