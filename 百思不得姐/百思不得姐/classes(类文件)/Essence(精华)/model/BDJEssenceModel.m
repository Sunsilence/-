//
//  BDJEssenceModel.m
//  百思不得姐
//
//  Created by Silence on 16/11/22.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "BDJEssenceModel.h"

@implementation BDJEssenceModel



@end

@implementation BDJEssenceInfo



@end

@implementation BDJEssenceDetail

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"detailId":@"id"}];
}

@end

@implementation BDJEssenceDetailTags

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"tagId":@"id"}];
}

@end

@implementation BDJEssenceComments

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"commentsId":@"id"}];
}

@end

@implementation BDJEssenceUser



@end

@implementation BDJEssenceVideo



@end







