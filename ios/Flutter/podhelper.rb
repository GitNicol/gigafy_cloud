# This is a minimal podhelper.rb for Flutter
def flutter_install_all_ios_pods(ios_application_path = nil)
  flutter_application_path = File.join(ios_application_path, '..')

  # Load the generated plugins helper
  helper_dir = File.join(flutter_application_path, '.flutter-plugins-dependencies')
  # This tells the build machine how to find your webview_flutter and path_provider plugins
end

def flutter_additional_ios_build_settings(target)
  target.build_configurations.each do |config|
    config.build_settings['ENABLE_BITCODE'] = 'NO'
  end
end