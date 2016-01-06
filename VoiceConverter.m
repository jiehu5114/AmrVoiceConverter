

#import "VoiceConverter.h"
#import "interf_dec.h"
#import "dec_if.h"
#import "interf_enc.h"
#import "amrFileCodec.h"

@implementation VoiceConverter

+ (NSData *)convertToRawAmrDataWithData:(NSData *)data {
    NSData *rawAmrData = nil;
    
    rawAmrData     = DecodeAmrOr3GP2RawAmr(data);
    
    return rawAmrData;
}

+ (NSData *)amrToWavWithAmrData:(NSData *)amrData {
    NSData *wavData = nil;
    
    wavData     = DecodeAMRToWAVE(amrData);
    
    return wavData;
}

+ (NSData *)wavToAmrWithWavData:(NSData *)wavData {
    NSData *amrData = nil;
    
    amrData     = EncodeWAVEToAMR(wavData, 1, 16);
    
    return amrData;
}

+ (BOOL)amrToWav:(NSString*)_amrPath wavSavePath:(NSString*)_savePath {
    BOOL ret    = FALSE;
    
    NSData *amrData     = [NSData dataWithContentsOfFile:_amrPath];
    amrData             = convertAndroid3GP2AMR(amrData);
    NSData *wavData     = DecodeAMRToWAVE(amrData);
   
    if (wavData) {
        [wavData writeToFile:_savePath atomically:NO];
        ret = TRUE;
    }
    
    return ret;
}

+ (BOOL)wavToAmr:(NSString*)_wavPath amrSavePath:(NSString*)_savePath {
    BOOL ret = FALSE;
    
    NSData *wavData     = [NSData dataWithContentsOfFile:_wavPath];
    NSData *amrData     = EncodeWAVEToAMR(wavData, 1, 16);
    
    if (amrData) {
        [amrData writeToFile:_savePath atomically:NO];
        ret = TRUE;
    }
    
    return ret;
}
    
@end
