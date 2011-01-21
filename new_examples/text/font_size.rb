# encoding: utf-8
# 
# <code>font_size</code> works just like <code>font</code>.
#
# In fact we can even use <code>font</code> with the <code>:size</code> option
# to declare which size we want.
#
# Another way to change the font size is the <code>:size</code> option from the
# text methods
#
require File.expand_path(File.join(File.dirname(__FILE__),
                                   %w[.. example_helper]))

filename = File.basename(__FILE__).gsub('.rb', '.pdf')
Prawn::Example.generate(filename) do
  text "Let's see which is the current font_size: #{font_size.inspect}"
  
  move_down 10
  font_size 16
  text "Yeah, something bigger!"
  
  move_down 10
  font_size(25) { text "Even bigger!" }
  
  move_down 10
  text "Back to 16 again."
  
  move_down 10
  text "Single line on 20 using the :size option.", :size => 20
  
  move_down 10
  text "Back to 16 once more."
  
  move_down 10
  font("Courier", :size => 10) do
    text "Yeah, using Courier 10 courtesy of the font method."
  end
  
  font("Helvetica", :size => 12)  # back to normal
end
