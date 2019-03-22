class Flutter < Formula
  version "1.2.1"
  sha256 "74ac8397ea29720f116980ea00cf60c34430be1f64489b407f7cf95553babbef"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v#{version}-stable.zip"
  name 'flutter'
  homepage "https://flutter.io/"
  
  bottle :unneeded

  depends_on "usbmuxd"
  depends_on "libimobiledevice"
  depends_on "ideviceinstaller"
  depends_on "ios-deploy"
  depends_on "cocoapods"
  
  def install
    system "pod", "setup"
  end
end
