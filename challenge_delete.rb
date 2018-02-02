load 'ar.rb'

tide_pods = Product.where(:name => 'Tide Pods').first

tide_pods.destroy unless tide_pods.nil?

tide_pods.inspect