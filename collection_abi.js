var collectionABI = [
    {
        "inputs": [
            {
                "internalType": "bytes32",
                "name": "_UID",
                "type": "bytes32"
            },
            {
                "internalType": "bytes32",
                "name": "_Desc",
                "type": "bytes32"
            },
            {
                "internalType": "uint256",
                "name": "_ObjectValue",
                "type": "uint256"
            },
            {
                "internalType": "uint256",
                "name": "_LastPrice",
                "type": "uint256"
            },
            {
                "internalType": "uint256",
                "name": "_CertificateDate",
                "type": "uint256"
            },
            {
                "internalType": "bytes",
                "name": "_DocCID",
                "type": "bytes"
            },
            {
                "internalType": "bytes",
                "name": "_PhotoCID",
                "type": "bytes"
            },
            {
                "internalType": "bytes",
                "name": "_DocHash",
                "type": "bytes"
            },
            {
                "internalType": "bytes",
                "name": "_PhotoHash",
                "type": "bytes"
            }
        ],
        "name": "createObject",
        "outputs": [],
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "inputs": [
            {
                "internalType": "bytes16",
                "name": "_collectionUID",
                "type": "bytes16"
            },
            {
                "internalType": "bytes16",
                "name": "_collectionName",
                "type": "bytes16"
            }
        ],
        "stateMutability": "nonpayable",
        "type": "constructor"
    },
    {
        "inputs": [],
        "name": "getCollectionName",
        "outputs": [
            {
                "internalType": "bytes16",
                "name": "",
                "type": "bytes16"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    },
    {
        "inputs": [],
        "name": "getCollectionUID",
        "outputs": [
            {
                "internalType": "bytes16",
                "name": "",
                "type": "bytes16"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    },
    {
        "inputs": [
            {
                "internalType": "uint256",
                "name": "_index",
                "type": "uint256"
            }
        ],
        "name": "getDocDetails",
        "outputs": [
            {
                "internalType": "bytes",
                "name": "",
                "type": "bytes"
            },
            {
                "internalType": "bytes",
                "name": "",
                "type": "bytes"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    },
    {
        "inputs": [],
        "name": "getNumberObjects",
        "outputs": [
            {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    },
    {
        "inputs": [],
        "name": "getObjectBalances",
        "outputs": [
            {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
            },
            {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    },
    {
        "inputs": [
            {
                "internalType": "uint256",
                "name": "_index",
                "type": "uint256"
            }
        ],
        "name": "getObjectInfo",
        "outputs": [
            {
                "internalType": "address",
                "name": "",
                "type": "address"
            },
            {
                "internalType": "bytes32",
                "name": "",
                "type": "bytes32"
            },
            {
                "internalType": "bytes32",
                "name": "",
                "type": "bytes32"
            },
            {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
            },
            {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
            },
            {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    },
    {
        "inputs": [
            {
                "internalType": "uint256",
                "name": "_index",
                "type": "uint256"
            }
        ],
        "name": "getPhotoDetails",
        "outputs": [
            {
                "internalType": "bytes",
                "name": "",
                "type": "bytes"
            },
            {
                "internalType": "bytes",
                "name": "",
                "type": "bytes"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    }
]
