class Flutter < Formula
  depends_on "usbmuxd"
  depends_on "libimobiledevice"
  depends_on "ideviceinstaller"
  depends_on "ios-deploy"
  depends_on "cocoapods"
  
  desc "Provide progress bars for shell scripts"
  homepage "https://flutter.io/"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.2.1-stable.zip"
  sha256 "74ac8397ea29720f116980ea00cf60c34430be1f64489b407f7cf95553babbef"
  
  bottle :unneeded

  def install
    ENV.refurbish_args
    system "./bin/flutter"
    allfiles = File.join(buildpath, "**", "{*,.*}")
    mv Dir.glob(allfiles), Dir.glob(prefix), :force => true
    
    bin.install "bin/flutter"
  #  system "brew", "install", "--HEAD", "usbmuxd"
  #  system "brew", "link", "usbmuxd"
  #  system "brew", "install", "--HEAD", "libimobiledevice"
  #  system "brew", "install", "ideviceinstaller"
  #  system "brew", "install", "ios-deploy"
  #  system "brew", "install", "cocoapods"
    system "pod", "setup"
  end

end
