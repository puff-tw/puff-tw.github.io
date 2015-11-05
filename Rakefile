task default: "assets:precompile"

desc "Build - it will generated into ./_site"
task :build do
  sh "bundle exec jekyll build"
#	puts `bundle exec jekyll build`
end

desc "Serve - http://localhost:4000/ As of version 2.4, it will watch for changes automatically."
task :serve do
  exec "bundle exec jekyll serve"
end

desc "New Post"
task :new do
  #require "date"
  #POSTS_DIR = "_posts/"
  #post = ARGV[1]
  #File.open(POSTS_DIR + Date.today.strftime("%Y-%m-%d-") + post + '.md', 'w') {|f| f.write(
   # "---\nlayout: post\nsection-type: post\ntitle: <Title>\ncategory: <Category>\ntags: [ '<tag1>', '<tag2>' ]\n---")
  #}
  #puts('[+] Created ' + post + ' post')
  puts ARGV.inspect
end

namespace :assets do
  desc "Precompile assets"
	task :precompile do
		Rake::Task["build"].invoke
	end
end
