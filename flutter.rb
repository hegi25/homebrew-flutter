class Flutter < Formula
  desc "Provide progress bars for shell scripts"
  homepage "https://flutter.io/"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.2.1-stable.zip"
  sha256 "74ac8397ea29720f116980ea00cf60c34430be1f64489b407f7cf95553babbef"
  
  bottle :unneeded

  def install
    bin.install "bin/flutter"
  end

end
