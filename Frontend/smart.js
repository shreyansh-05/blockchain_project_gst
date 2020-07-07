var address = "0xecd270Ad3119a4971b62F3A7fC236a6B20077d64";
var ABI = [
	{
		"constant": false,
		"inputs": [
			{
				"name": "Aname",
				"type": "string"
			},
			{
				"name": "Aid",
				"type": "string"
			}
		],
		"name": "addAdmin",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "_name1",
				"type": "string"
			},
			{
				"name": "_mob1",
				"type": "string"
			},
			{
				"name": "_GST_no1",
				"type": "uint256"
			},
			{
				"name": "_Total_amount1",
				"type": "string"
			},
			{
				"name": "_GST_amount1",
				"type": "string"
			},
			{
				"name": "_VID1",
				"type": "uint256"
			}
		],
		"name": "addbill",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "G_acnt_no",
				"type": "uint256"
			},
			{
				"name": "G_ifsc_code",
				"type": "string"
			}
		],
		"name": "addGovt",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "Maccount_no",
				"type": "uint256"
			},
			{
				"name": "Gst_amount",
				"type": "uint256"
			},
			{
				"name": "Non_gst",
				"type": "uint256"
			}
		],
		"name": "addSystem",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "_name",
				"type": "string"
			},
			{
				"name": "_email",
				"type": "string"
			},
			{
				"name": "_GST_number",
				"type": "uint256"
			},
			{
				"name": "_Age",
				"type": "string"
			},
			{
				"name": "_mobile",
				"type": "string"
			},
			{
				"name": "_gender",
				"type": "string"
			},
			{
				"name": "_password",
				"type": "string"
			}
		],
		"name": "registerMerchant",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "userid",
				"type": "uint256"
			},
			{
				"name": "password1",
				"type": "string"
			}
		],
		"name": "checklogin",
		"outputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "_GST_number",
				"type": "uint256"
			},
			{
				"name": "i",
				"type": "uint256"
			}
		],
		"name": "getbill",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "vid",
				"type": "uint256"
			},
			{
				"name": "i",
				"type": "uint256"
			}
		],
		"name": "getbill2",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "_GST_number",
				"type": "uint256"
			}
		],
		"name": "getMerchant",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "uint256"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "len",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
];
    