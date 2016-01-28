Pod::Spec.new do |s|
s.name              = "XBAlipaySDK"
s.version           = "15.0.4"
s.summary           = "XBAlipaySDK"
s.homepage          = "https://b.alipay.com/newIndex.htm"
s.license      = { :type => "Copyright", :text => "支付宝(中国)网络技术有限公司  版权所有." }
s.author            = { "AliPay" => "http://www.alipay.com/" }
s.platform          = :ios
s.requires_arc      = true

s.source            = { :git => "https://github.com/qianqianwoaini/XBAlipaySDK.git", :tag => "#{s.version}" }
s.frameworks        = 'CoreTelephony', 'SystemConfiguration'


s.resources    = 'AliSDK/AlipaySDK.bundle'
s.vendored_frameworks = 'AliSDK/AlipaySDK.framework'
s.public_header_files = 'AliSDK/AlipaySDK.framework/Headers/**/*.h'


s.subspec 'Order' do |ss|
ss.source_files = 'AliSDK/AliSDKDemo/AliSDKDemo/Order.{h,m}'
ss.public_header_files = 'AliSDK/AliSDKDemo/AliSDKDemo/Order.h'
ss.frameworks = 'Foundation'
end

#s.subspec "SSL" do |ssl|
#ssl.dependency 'AlipaySDK-2.0/Core'
#ssl.dependency 'OpenSSL'
#end

end