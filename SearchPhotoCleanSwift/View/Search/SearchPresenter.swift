//
//  SearchPresenter.swift
//  SearchPhotoCleanSwift
//
//  Created by Panda on 2021/01/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol SearchPresentationLogic
{
  func presentSomething(response: Search.Something.Response)
}

class SearchPresenter: SearchPresentationLogic
{
  weak var viewController: SearchDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Search.Something.Response)
  {
    let viewModel = Search.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}