class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def set_bad_method
    not_used = true
    @not_great = {
      :at_ruby_2 => true,
      :at_strings => "Double quotes are bad!",
      :at_complexity => true && false && true && false || true && false
    }
    if @not_great[:at_ruby_2]
      if @not_great[:at_strings] == "Double quotes are bad!"
        if @not_great[:at_complexity]
          @complex = true
        else
          @complexity = false
        end
      end
    end
    # Let's do it again for good measure
    not_used = true
    @not_great = {
      :at_ruby_2 => true,
      :at_strings => "Double quotes are bad!",
      :at_complexity => true && false && true && false || true && false
    }
    if @not_great[:at_ruby_2]
      if @not_great[:at_strings] == "Double quotes are bad!"
        if @not_great[:at_complexity]
          @complex = true
        else
          @complexity = false
        end
      end
    end
  end

  def get_long_string
    'What a really long string What a really long string What a really long string What a really long string What a really long string What a really long string What a really long string What a really long string What a really long string What a really long string'
    return nil
  end
end
