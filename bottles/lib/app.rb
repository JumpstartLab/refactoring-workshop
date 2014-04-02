module Bottles
  class App < Sinatra::Base
    helpers do
      def verse(number)
        case number
        when 0
          "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
        when 1
          "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
        when 2
          "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
        else
          "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number-1} bottles of beer on the wall.\n"
        end
      end
    end

    get '/' do
      99.downto(0).map {|n| verse(n) + "\n"}.join.gsub("\n", "<br>")
    end
  end
end
