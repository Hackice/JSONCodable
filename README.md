# JSONCodable
解决JSONDecoder模型转换字段类型不匹配的问题


场景重现(不同业务背景有些许差异)：


1. 网络请求`Networking.JSONRequest(api:completion:)`
2. 配合Moya得到`SwiftyJSON.JSON`对象
3. JSONDecoder().decode(`遵从Decodable协议的模型`, from: json.rawData())
4. 模型转换为空，报错信息：
	
	```
	DecodingError
	▿ typeMismatch : 2 elements
	- .0 : Swift.String
	▿ .1 : Context
	▿ codingPath : 1 element
	- 0 : CodingKeys(stringValue: "customer_id", intValue: nil)
	- debugDescription : "Expected to decode String 
	but found a number instead."
	- underlyingError : nil
	```
5. 拓展KeyedDecodingContainer的Decode方法，对不同类型间做转换支持