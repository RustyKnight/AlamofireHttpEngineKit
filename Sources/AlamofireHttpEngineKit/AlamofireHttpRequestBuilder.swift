//
//  AlamofireHttpRequestBuilder.swift
//  ShoutOutAPI
//
//  Created by Shane Whitehead on 11/10/18.
//  Copyright © 2018 KaiZen. All rights reserved.
//

import Foundation
import HttpEngineCore
import Alamofire
import Cadmus

open class AlamofireHttpRequestBuilder: BaseHttpRequestBuilder {

	override open func build() throws -> HttpEngine {
		return AlamofireHttpEngine(url: url,
															 queryItems: queryItems,
															 headers: headers,
															 credentials: credentials,
															 timeout: timeout,
															 progressMonitor: progressMonitor)
	}
}
