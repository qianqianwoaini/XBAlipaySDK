
Pod::Spec.new do |s|
s.name              = "XBAlipaySDK"
s.version           = "15.0.4"
s.summary           = "XBAlipaySDK"
s.homepage          = "https://b.alipay.com/newIndex.htm"
s.license      = { :type => "Copyright", :text => "支付宝(中国)网络技术有限公司  版权所有." }
s.author            = { "AliPay" => "http://www.alipay.com/" }
s.platform     = :ios, "7.0"
s.requires_arc      = true

s.source            = { :git => "https://github.com/qianqianwoaini/XBAlipaySDK.git", :tag => "#{s.version}" }
s.frameworks        = 'CoreTelephony', 'SystemConfiguration'


s.resources    = 'AlipaySDK.bundle'
s.vendored_frameworks = 'AlipaySDK.framework'
s.public_header_files = 'AlipaySDK.framework/Headers/**/*.h', "AliSDKDemo/AliSDKDemo/openssl/*.h"
s.vendored_libraries = 'AliSDKDemo/libcrypto.a', 'AliSDKDemo/libssl.a'

#s.subspec "AliPay-Extend" do |ae|
#    ae.source_files = "AliPay-Extend"
#    ae.subspec "Util" do |u|
#      u.source_files = "AliPay-Extend/Util"
#    end
#  end

s.subspec "openssl" do |ssl|
  ssl.source_files = "AliSDKDemo/AliSDKDemo/openssl"
  ssl.header_dir = "openssl"
end

end
