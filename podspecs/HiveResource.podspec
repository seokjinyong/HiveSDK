Pod::Spec.new do |spec|
  spec.name         = "HiveResource"
  spec.version      = "1.0.0-beta4"
  spec.summary      = "HiveResource.bundle"
  spec.description  = "Hive SDK resource bundle. Required bundle to use Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => "Apache License Version 2.0",
    :file => 'LICENSE'
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "10.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/seokjinyong/HiveSDK/releases/download/#{spec.version}/Hive_SDK_iOS_Core_v#{spec.version}.zip" 
  }

  $vendored_resource_path = "{Hive_SDK_iOS_v#{spec.version}/resource, resource}"
  spec.resource = "#{$vendored_resource_path}/HiveResource.bundle"
end
