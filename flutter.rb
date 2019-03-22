
class flutter < Formula
  require "usbmuxd"
  require "libimobiledevice"
  require "ideviceinstaller"
  require "ios-deploy"
  require "cocoapods"
  
  version "1.2.1"
  sha256 "74ac8397ea29720f116980ea00cf60c34430be1f64489b407f7cf95553babbef"
  
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v#{version}-stable.zip"
  name 'flutter'
  homepage "https://flutter.io/"
  
  bottle :unneeded


  def install
    system "pod", "setup"
  end

end
