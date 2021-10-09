pragma solidity ^0.7.6;

	contract Object {
	    bytes32 private UID;
	    bytes private Desc;
	    uint 	private ObjectValue;
	    uint 	private LastPrice;
	    uint 	private CertificateDate;
	    bytes 	private DocCID;
	    bytes 	private PhotoCID;
	    bytes 	private DocHash;
	    bytes 	private PhotoHash;

		constructor(bytes32 _UID, bytes memory _Desc, uint _ObjectValue, uint _LastPrice, uint _CertificateDate, bytes memory _DocCID, bytes memory _PhotoCID, bytes memory _DocHash, bytes memory _PhotoHash) public {
	    	UID 			= _UID;
	    	Desc 			= _Desc;
	    	ObjectValue 	= _ObjectValue;
	    	LastPrice 		= _LastPrice;
	    	CertificateDate = _CertificateDate;
	    	DocCID 			= _DocCID;
	    	PhotoCID 		= _PhotoCID;
	    	DocHash 		= _DocHash;
	    	PhotoHash 		= _PhotoHash;
	    	}

	 	function getUID() view public returns (bytes32) {
			return UID;
			}

	 	function getDesc() view public returns (bytes memory) {
			return Desc;
			}

	 	function getObjectValue() view public returns (uint) {
			return ObjectValue;
			}

	 	function getLastPrice() view public returns (uint) {
			return LastPrice;
			}

	 	function getCertificateDate() view public returns (uint) {
			return CertificateDate;
			}

	 	function getDocCID() view public returns (bytes memory) {
			return DocCID;
			}

	 	function getPhotoCID() view public returns (bytes memory) {
			return PhotoCID;
			}

	 	function getDocHash() view public returns (bytes memory) {
			return DocHash;
			}

	 	function getPhotoHash() view public returns (bytes memory) {
			return PhotoHash;
			}

	 	function isDocAuthentic(bytes memory _testDocHash) view public returns (bool) {
			if (keccak256(abi.encodePacked(DocHash))  == keccak256(abi.encodePacked(_testDocHash)))
				return true;
			else
				return false;
			}

	 	function isPhotoAuthentic(bytes memory _testPhotoHash) view public returns (bool) {
			if (keccak256(abi.encodePacked(PhotoHash))  == keccak256(abi.encodePacked(_testPhotoHash)))
				return true;
			else
				return false;
			} // function isPhotoAuthentic(bytes32 _testPhotoHash)

		function getBalances() public view returns (uint, uint) {
			return (ObjectValue, LastPrice);
			} // function getBalances() public view returns (uint, uint)

	} // Object

	contract Collection {

		bytes16 private collectionUID;
	   	bytes16 private collectionName;
		uint private collectionObjectValue;
		uint private collectionLastPrice;

	   	// Define array to store objects
	   	Object[] private objects;

	   	constructor(bytes16 _collectionUID, bytes16 _collectionName) public {
	      	collectionUID = _collectionUID;
	      	collectionName = _collectionName;
			collectionObjectValue = 0;
			collectionLastPrice = 0;
	      	} // constructor(bytes16 _collectionUIC, bytes16 _collectionName) public

	   	function createObject(bytes32 _UID, bytes memory _Desc, uint _ObjectValue, uint _LastPrice, uint _CertificateDate, bytes memory _DocCID, bytes memory _PhotoCID, bytes memory _DocHash, bytes memory _PhotoHash) public {
	   		// Create Object

			Object o = new Object(_UID, _Desc, _ObjectValue, _LastPrice, _CertificateDate, _DocCID, _PhotoCID, _DocHash, _PhotoHash);

			// Object created, now add to collection
	      	objects.push(o);
			} // function createObject

	   	function getNumberObjects() public view returns(uint) {
			return objects.length;
			} // function getNumberObjects()

	   	function getObjectBalances() public view returns (uint, uint) {

			uint myObjectValueBalance = 0;
			uint myLastPriceBalance   = 0;

			uint totObjectValueBalance 	= 0;
			uint totLastPriceBalance 	= 0;
			
			for (uint8 i = 0; i < objects.length; i++)
				{
				// Get object value balances
	 			(myObjectValueBalance, myLastPriceBalance) = Object(objects[i]).getBalances();

	 			// Calculate totals
	 			totObjectValueBalance 	+= myObjectValueBalance ;
	 			totLastPriceBalance 	+= myLastPriceBalance;	 			
	 			}
	  		return (totObjectValueBalance, totLastPriceBalance);
			} // function getObjectBalances() public view returns (uint, uint)

		function getCollectionUID() public view returns (bytes16){
	      	return collectionUID;
			} // function getCollectionUID() public view returns (bytes16)

		function getCollectionName() public view returns (bytes16){
	      	return collectionName;
			} // function getCollectionName() public view returns (bytes16)

		function getObjectInfo(uint _index) public view returns (address, bytes32, bytes memory, uint, uint, uint, bytes memory, bytes memory, bytes memory, bytes memory) {
	      	Object myObject = objects[_index];
         	
         	// Get Document CID for IPFS location and Hash for authentication
	      	bytes memory myDocCID  = myObject.getDocCID();
	      	bytes memory myDocHash = myObject.getDocHash();

         	// Get Photo CID for IPFS location and Hash for authentication
	      	bytes memory myPhotoCID  = myObject.getPhotoCID();
	      	bytes memory myPhotoHash = myObject.getPhotoHash();

         	return (address(myObject), myObject.getUID(), myObject.getDesc(), myObject.getObjectValue(), myObject.getLastPrice(), myObject.getCertificateDate(), myDocCID, myDocHash, myPhotoCID, myPhotoHash);
			} // function getObjectInfo(uint _index)
	    
		} // contract Object