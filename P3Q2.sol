// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductRegistry {
    // State variables
    string public productName = "Example Product";
    string public constant productType = "Default Type";

    // Function to set the product name
    function setProductName(string memory _productName) public {
        productName = _productName;
    }

    // Function to get the product name
    function getProductName() public view returns (string memory) {
        return productName;
    }
}

//1.What is the initial value of the productName variable?
//"The initial value of the productName variable is "Example Product"."

//2.What type of information does the productType variable store?
//"I put a value "Default Type" to productType to avoid to show nothing. The productType variable stores a string constant with the value "Default Type". This value is fixed and cannot be changed after deployment."

//3.How can you update the value of the productName variable?
//"You can update the value of the productName variable by calling the setProductName function with the new product name as an argument."

//4.Explain how to retrieve the current value of the productName variable.
//"You can retrieve the current value of the productName variable by calling the getProductName function."