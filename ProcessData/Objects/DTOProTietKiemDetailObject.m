//
//  DTOProTietKiemDetail.m
//  OfficeOneMB
//
//  Created by macpro on 1/24/15.
//
//

#import "DTOProTietKiemDetailObject.h"

#import "Items.h"

@implementation DTOProTietKiemDetailObject

+(NSArray*)allFields{
    return [NSArray arrayWithObjects:
            @"BRANCH_CODE",
            @"CONTRACT_NUMBER",
            @"OPEN_DATE",
            @"EXPIRED_DATE",
            @"TRANSACTION_DATE",
            @"BALANCE",
            @"BALANCE_QD",
            @"CARD_FLAG",
            @"ACC_STATUS",
            @"SOD_BALANCE",
            @"SOD_BALANCE_QD",
            @"CURRENCY",
            @"CLIENT_ID",
            @"TERM_DAY",
            @"TERM_WEEK",
            @"TERM_TXT",
            @"SUSPEND_INTEREST",
            @"INTEREST",
            @"EXPENSE_INTEREST",
            @"LINE_T24",
            @"INDUSTRY_CODE",
            @"SECTOR",
            @"GL",
            @"PRODUCT_CODE",
            @"RM_CODE",
            @"BUSSINESS_DATE",
            @"KHOI",
            nil];
}

- (Items*)itemObject{
    Items * item = [[Items alloc] initWithKeys:[NSArray arrayWithObjects:
                                                @"BRANCH_CODE",
                                                @"CONTRACT_NUMBER",
                                                @"OPEN_DATE",
                                                @"EXPIRED_DATE",
                                                @"TRANSACTION_DATE",
                                                @"BALANCE",
                                                @"BALANCE_QD",
                                                @"CARD_FLAG",
                                                @"ACC_STATUS",
                                                @"SOD_BALANCE",
                                                @"SOD_BALANCE_QD",
                                                @"CURRENCY",
                                                @"CLIENT_ID",
                                                @"TERM_DAY",
                                                @"TERM_WEEK",
                                                @"TERM_TXT",
                                                @"SUSPEND_INTEREST",
                                                @"INTEREST",
                                                @"EXPENSE_INTEREST",
                                                @"LINE_T24",
                                                @"INDUSTRY_CODE",
                                                @"SECTOR",
                                                @"GL",
                                                @"PRODUCT_CODE",
                                                @"RM_CODE",
                                                @"BUSSINESS_DATE",
                                                @"KHOI",
                                                nil]];

    for (NSString *key in [item allKeys]) {
        [item setValue:[self valueForKey:key] forKey:key];
    }

    return item ;
}

- (NSMutableDictionary *)convertToDictionary
{
    NSMutableDictionary *_dictionary=[[NSMutableDictionary alloc] init];
    NSArray *keyArray=[NSArray arrayWithObjects:
                       @"BRANCH_CODE",
                       @"CONTRACT_NUMBER",
                       @"OPEN_DATE",
                       @"EXPIRED_DATE",
                       @"TRANSACTION_DATE",
                       @"BALANCE",
                       @"BALANCE_QD",
                       @"CARD_FLAG",
                       @"ACC_STATUS",
                       @"SOD_BALANCE",
                       @"SOD_BALANCE_QD",
                       @"CURRENCY",
                       @"CLIENT_ID",
                       @"TERM_DAY",
                       @"TERM_WEEK",
                       @"TERM_TXT",
                       @"SUSPEND_INTEREST",
                       @"INTEREST",
                       @"EXPENSE_INTEREST",
                       @"LINE_T24",
                       @"INDUSTRY_CODE",
                       @"SECTOR",
                       @"GL",
                       @"PRODUCT_CODE",
                       @"RM_CODE",
                       @"BUSSINESS_DATE",
                       @"KHOI",
                       nil];

    for (NSString *key in keyArray) {
        [_dictionary setValue:[self valueForKey:key] forKey:key];
    }
    return _dictionary ;
}
- (void)parseFromDictionary:(NSDictionary *)dictionary
{
    for (NSString *key in [dictionary allKeys]) {
        [self setValue:[dictionary objectForKey:key] forKey:key];
    }
}

- (void)parseFromItem:(Items*)item{
    for (NSString *key in [item allKeys]) {
        [self setValue:[item valueForKey:key] forKey:key];
    }
    
    
}
@end
