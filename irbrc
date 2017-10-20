#!/usr/bin/env ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE]= :SIMPLE

def y(obj)
  puts obj.to_yaml
end

class Object
  def vim(method_name)
    file, line = method(method_name).source_location
    `mvim +#{line} #{file}`
  end
end

# if defined? Bundler
  # Gem.post_reset_hooks.reject! {|hook| hook.source_location.first =~ %r{/bundler/}}
  # Gem::Specification.reset 
  # load 'rubygems/custom_require.rb'
# end

# if defined? Rails
  # begin
    # require "awesome_print"
  # rescue
    
  # end
# end
