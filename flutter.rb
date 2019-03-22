class Flutter < Formula
  depends_on "usbmuxd"
  depends_on "libimobiledevice"
  depends_on "ideviceinstaller"
  depends_on "ios-deploy"
  depends_on "cocoapods"
  
  desc "Build beautiful native apps in record time"
  homepage "https://flutter.io/"
  version "1.0.0"
  url "https://github.com/flutter/flutter.git", :branch => "stable"
  bottle :unneeded

  def install
    system "git", "fetch", "--all", "--prune", "--tags"

    # checkout latest tag
    latest_tag = `git tag | tail -1`
    puts latest_tag
    system "git checkout tags/#{latest_tag}"

    system "./bin/flutter"

    allfiles = File.join(buildpath, "**", "{*,.*}")
    mv Dir.glob(allfiles), Dir.glob(prefix), :force => true

    # bin.install File.join(prefix, "bin/cache/dart-sdk/bin/dart")
    # bin.install File.join(prefix, "bin/cache/dart-sdk/bin/pub")
       
    system "pod", "setup"
    
  end

  def post_install
    rm File.join(HOMEBREW_PREFIX, "bin", "flutter.bat")
    chmod_R "+rwx", File.join(prefix, "bin"), :verbose => true
  end

  test do
    system "false"
  end
end
