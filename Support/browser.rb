#!/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ruby
PROJECT_ROOT = ARGV[0] # Where to browse for images
RESOURCES_DIR = "#{ENV['TM_BUNDLE_SUPPORT']}/Resources" # Where to find ImageBrowser's images
require "#{ENV['TM_BUNDLE_SUPPORT']}/image_size.rb"
require 'erb'

erb = ERB.new(IO.read("#{ENV['TM_BUNDLE_SUPPORT']}/Resources/browser.rhtml"))
erb.run