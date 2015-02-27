//
//  PersonListAssembly.swift
//  Persons
//
//  Created by Sebastian Wramba on 29.10.14.
//  Copyright (c) 2014 Sebastian Wramba. All rights reserved.
//

import Foundation

class PersonListAssembly: TyphoonAssembly {
    
    var applicationAssembly: ApplicationAssembly!
    var personDetailAssembly: PersonDetailAssembly!
    
    dynamic func personListWireframe() -> AnyObject {
        return TyphoonDefinition.withClass(PersonListWireframe.self) {
            (definition) in
            
            definition.injectProperty("listPresenter", with: self.personListPresenter())
            definition.injectProperty("rootWireframe", with: self.applicationAssembly.rootWireframe())
            definition.injectProperty("detailWireframe", with: self.personDetailAssembly.personDetailWireframe())
            definition.injectProperty("listViewController", with: self.personListViewController())
        }
    }
    
    dynamic func personListInteractor() -> AnyObject {
        return TyphoonDefinition.withClass(PersonListInteractor.self) {
            (definition) in
            
            definition.useInitializer("initWithDataStore:") {
                (initializer) in
                
                initializer.injectParameterWith(self.applicationAssembly.personDataStore())
            }
            
            definition.injectProperty("delegate", with: self.personListPresenter())
        }
    }
    
    dynamic func personListPresenter() -> AnyObject {
        return TyphoonDefinition.withClass(PersonListPresenter.self) {
            (definition) in
            
            definition.injectProperty("userInterface", with: self.personListViewController())
            
            definition.injectProperty("interactor", with: self.personListInteractor())
            definition.injectProperty("listWireframe", with: self.personListWireframe())
            
        }
    }
    
    dynamic func personListViewController() -> AnyObject {
        
        return TyphoonDefinition.withClass(PersonListViewController.self) {
            (definition) in
            
            definition.factory = self.applicationAssembly.mainStoryboard()
            definition.useInitializer("instantiateViewControllerWithIdentifier:", parameters: { (factoryMethod) in
                
                factoryMethod.injectParameterWith("PersonListViewController")
            })
            
            definition.injectProperty("presenter", with: self.personListPresenter())
        }
    }
    
    
    
}
