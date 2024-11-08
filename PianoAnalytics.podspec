Pod::Spec.new do |s|
    s.name = 'PianoAnalytics'
    s.version = '3.1.8'
    s.summary = 'Piano Analytics library for Apple devices'
    s.homepage = 'https://github.com/quechoisir/piano-analytics-apple'
    s.documentation_url = 'https://developers.atinternet-solutions.com/piano-analytics'
    s.license = 'MIT'
    s.author = 'Piano Analytics'
    s.requires_arc = true
    s.source = { :git => 'https://github.com/quechoisir/piano-analytics-apple.git', :tag => s.version}
    s.dependency 'PianoConsents', ">= 1.0"
    s.module_name = 'PianoAnalytics'
    s.ios.deployment_target = '12.0'
    s.swift_versions = '5'
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.subspec 'iOS' do |d|
        d.source_files = 'Sources/**/*.{h,m,swift}'
        d.platform = :ios
        d.resource_bundle = {
            "PianoAnalytics_iOS" => ["Sources/PianoAnalytics/Resources/*.xcprivacy"]
        }
        d.resource = 'Sources/PianoAnalytics/Resources/*.json'
    end

    s.subspec 'appExtension' do |appExt|
        appExt.pod_target_xcconfig = { 'OTHER_SWIFT_FLAGS' => '-DAT_EXTENSION' }
        appExt.source_files = 'Sources/**/*.swift'
        appExt.platform = :ios
        appExt.resource_bundle = {
            "PianoAnalytics_appExtension" => ["Sources/PianoAnalytics/Resources/*.xcprivacy"]
        }
        appExt.resource = 'Sources/PianoAnalytics/Resources/*.json'
    end
end
