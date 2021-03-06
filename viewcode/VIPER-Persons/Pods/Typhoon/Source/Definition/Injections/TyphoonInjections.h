////////////////////////////////////////////////////////////////////////////////
//
//  TYPHOON FRAMEWORK
//  Copyright 2013, Jasper Blues & Contributors
//  All Rights Reserved.
//
//  NOTICE: The authors permit you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////


id TyphoonInjectionMatchedByType(void);

id TyphoonInjectionWithType(id classOrProtocol);

id TyphoonInjectionWithObjectFromString(NSString *string);

id TyphoonInjectionWithCollectionAndType(id collection, Class requiredClass);

id TyphoonInjectionWithDictionaryAndType(id dictionary, Class requiredClass);

id TyphoonInjectionWithRuntimeArgumentAtIndex(NSUInteger argumentIndex);

id TyphoonInjectionWithRuntimeArgumentAtIndexWrappedIntoBlock(NSUInteger argumentIndex);

id TyphoonInjectionWithObject(id object);

id TyphoonInjectionWithReference(NSString *reference);

id TyphoonInjectionWithConfigKey(NSString *configKey);

id TyphoonInjectionWithCurrentRuntimeArguments();

id TyphoonMakeInjectionFromObjectIfNeeded(id objectOrInjection);

BOOL IsTyphoonInjection(id objectOrInjection);
