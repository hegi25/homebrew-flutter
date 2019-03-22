cask 'flutter' do
  version "1.2.1"
  sha256 "59c0aa1ca7bafdefc879ec66644c5de5543eee59"
  
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v#{version}-stable.zip"
  name 'flutter'
  homepage "https://flutter.io/"

  binary "#{staged_path}/flutter/bin/flutter"

end
