// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from janus-client.djinni

#import "JanusPluginFactory+Private.h"
#import "JanusPluginFactory.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIObjcWrapperCache+Private.h"
#import "JanusPlugin+Private.h"
#import "JanusProtocol+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface JanusPluginFactoryCppProxy : NSObject<JanusPluginFactory>

- (id)initWithCpp:(const std::shared_ptr<::Janus::PluginFactory>&)cppRef;

@end

@implementation JanusPluginFactoryCppProxy {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Janus::PluginFactory>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Janus::PluginFactory>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable id<JanusPlugin>)create:(nullable id<JanusProtocol>)owner {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->create(::djinni_generated::Protocol::toCpp(owner));
        return ::djinni_generated::Plugin::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

class PluginFactory::ObjcProxy final
: public ::Janus::PluginFactory
, private ::djinni::ObjcProxyBase<ObjcType>
{
    friend class ::djinni_generated::PluginFactory;
public:
    using ObjcProxyBase::ObjcProxyBase;
    std::shared_ptr<::Janus::Plugin> create(const std::shared_ptr<::Janus::Protocol> & c_owner) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() create:(::djinni_generated::Protocol::fromCpp(c_owner))];
            return ::djinni_generated::Plugin::toCpp(objcpp_result_);
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto PluginFactory::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    if ([(id)objc isKindOfClass:[JanusPluginFactoryCppProxy class]]) {
        return ((JanusPluginFactoryCppProxy*)objc)->_cppRefHandle.get();
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto PluginFactory::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    if (auto cppPtr = dynamic_cast<ObjcProxy*>(cpp.get())) {
        return cppPtr->djinni_private_get_proxied_objc_object();
    }
    return ::djinni::get_cpp_proxy<JanusPluginFactoryCppProxy>(cpp);
}

}  // namespace djinni_generated

@end