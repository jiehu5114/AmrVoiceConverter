


//this lib come from:https://github.com/ondev/AMRDemoForiOS


#import <Foundation/Foundation.h>

@interface VoiceConverter : NSObject

+ (BOOL)amrToWav:(NSString*)_amrPath wavSavePath:(NSString*)_savePath;

+ (BOOL)wavToAmr:(NSString*)_wavPath amrSavePath:(NSString*)_savePath;

+ (NSData *)convertToRawAmrDataWithData:(NSData *)data;

+ (NSData *)amrToWavWithAmrData:(NSData *)amrData;

+ (NSData *)wavToAmrWithWavData:(NSData *)wavData;

@end
