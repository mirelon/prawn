# encoding: utf-8
#
# To scale the image there is the <code>:scale</code> option.
#
# It will scale the dimensions of the image proportionally given the provided
# value.
#
require File.expand_path(File.join(File.dirname(__FILE__),
                                   %w[.. example_helper]))

filename = File.basename(__FILE__).gsub('.rb', '.pdf')
Prawn::Example.generate(filename) do
  text "Normal size"
  image "#{Prawn::BASEDIR}/data/images/stef.jpg"
  move_down 10
  
  text "Scaled to 50%"
  image "#{Prawn::BASEDIR}/data/images/stef.jpg", :scale => 0.5
  move_down 10
  
  text "Scaled to 200%"
  image "#{Prawn::BASEDIR}/data/images/stef.jpg", :scale => 2
end
