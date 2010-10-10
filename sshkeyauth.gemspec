Gem::Specification.new do |spec|
  files = []
  #dirs = %w{lib samples test bin}
  dirs = %w{lib samples}
  dirs.each do |dir|
    files += Dir["#{dir}/**/*"]
  end

  #svnrev = %x{svn info}.split("\n").grep(/Revision:/).first.split(" ").last.to_i
  rev = Time.now.strftime("%Y%m%d%H%M%S")
  spec.name = "sshkeyauth"
  spec.version = "0.0.1"
  spec.summary = "eventmachine tail - a file tail implementation with glob support"
  spec.description = "Add file 'tail' implemented with EventMachine. Also includes a 'glob watch' class for watching a directory pattern for new matches, like /var/log/*.log"
  spec.add_dependency("net-ssh")
  spec.files = files
  spec.require_paths << "lib"
  #spec.bindir = "bin"
  #spec.executables << "rtail"

  spec.author = "Jordan Sissel"
  spec.email = "jls@semicomplete.com"
  spec.homepage = "http://github.com/jordansissel/ruby-sshkeyauth"
end
